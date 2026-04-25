#!/usr/bin/env bash
set -euo pipefail

usage() {
  cat <<'EOF'
Usage:
  ./makers.sh new-host <host-name> <nixos-version> <main-user>
  ./makers.sh new-user <user-name>
  ./makers.sh new-feature <feature-name>

Notes:
  - Expects templates in:
      templates/host
      templates/user
      templates/feature
  - For new-host it also expects:
      ./hardware-configuration.nix
EOF
}

die() {
  echo "Error: $*" >&2
  exit 1
}

cmd="${1:-}"
shift || true

case "$cmd" in
  new-host)
    NEW_HOST_NAME="${1:-}"
    NIXOS_VERSION="${2:-}"
    MAIN_USER="${3:-}"

    [ -n "$NEW_HOST_NAME" ] || die "Usage: ./makers.sh new-host <host-name> <nixos-version> <main-user>"
    [ -n "$NIXOS_VERSION" ] || die "Usage: ./makers.sh new-host <host-name> <nixos-version> <main-user>"
    [ -n "$MAIN_USER" ] || die "Usage: ./makers.sh new-host <host-name> <nixos-version> <main-user>"

    [ ! -d "hosts/${NEW_HOST_NAME}" ] || die "Host ${NEW_HOST_NAME} already exists."
    [ -d "templates/host" ] || die "Template directory does not exist: templates/host"
    [ -f "hardware-configuration.nix" ] || die "hardware-configuration.nix file does not exist."

    cp -r "templates/host" "hosts/${NEW_HOST_NAME}"
    cp "hardware-configuration.nix" "hosts/${NEW_HOST_NAME}/hardware.nix"

    sed -i "s/NIXOS_VERSION/${NIXOS_VERSION}/g" "hosts/${NEW_HOST_NAME}/vars.nix"
    sed -i "s/NIXOS_HOSTNAME/${NEW_HOST_NAME}/g" "hosts/${NEW_HOST_NAME}/vars.nix"
    sed -i "s/MAIN_USER/${MAIN_USER}/g" "hosts/${NEW_HOST_NAME}/vars.nix"

    # Insert host entry after the line containing: nixosConfigurations = {
    sed -i "/nixosConfigurations = {/a\\
        \"${NEW_HOST_NAME}\" = mkHost { hostName = \"${NEW_HOST_NAME}\"; };" flake.nix
    ;;

  new-user)
    NEW_USER_NAME="${1:-}"
    [ -n "$NEW_USER_NAME" ] || die "Usage: ./makers.sh new-user <user-name>"

    [ ! -d "users/${NEW_USER_NAME}" ] || die "User ${NEW_USER_NAME} already exists."
    [ -d "templates/user" ] || die "Template directory does not exist: templates/user"

    cp -r "templates/user" "users/${NEW_USER_NAME}"

    sed -i "s/NEW_USER/${NEW_USER_NAME}/g" "users/${NEW_USER_NAME}/home/default.nix"
    sed -i "s/NEW_USER/${NEW_USER_NAME}/g" "users/${NEW_USER_NAME}/host/default.nix"
    ;;

  new-feature)
    NEW_FEATURE_NAME="${1:-}"
    [ -n "$NEW_FEATURE_NAME" ] || die "Usage: ./makers.sh new-feature <feature-name>"

    [ ! -d "features/${NEW_FEATURE_NAME}" ] || die "Feature ${NEW_FEATURE_NAME} already exists."
    [ -d "templates/feature" ] || die "Template directory does not exist: templates/feature"

    cp -r "templates/feature" "features/${NEW_FEATURE_NAME}"
    ;;

  -h|--help|help|"")
    usage
    exit 0
    ;;

  *)
    die "Unknown command: $cmd. Run: ./makers.sh --help"
    ;;
esac
