{ config, pkgs, ... }:
{
  programs.bash = {
    enable = true;
    initExtra = ''
      echo '
      THAT CAT IS ALREADY USING NIXOS WTFFFFFFFFF
      ⠀⠀⠀⠀⢠⣷⠀⡏⣆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
      ⠀⠀⠀⢠⡏⠸⠤⠿⠉⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
      ⠀⠀⠀⡏⠀⠀⠀⠀⠀⠻⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡠⣴⣦⣶⣶⣦⣶⣿⣿⣿⣿⢳⣶⣦⡀⠀⠀⠀
      ⡁⠀⢰⣔⣶⣦⠄⠰⣶⣖⣧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣾⡿⣿⣿⣿⣿⣿⣿⣿⣯⣾⣾⣄⣀⣛⢿⣦⡀⠀
      ⢠⡀⢸⠀⠀⠀⣜⢲⠂⠀⠸⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡰⡿⣿⣿⣿⣿⣿⣿⣿⣟⣿⣿⣧⣈⠄⠘⢵⣾⣿⢿⡄
      ⠀⠙⢞⠀⠀⠀⠙⠋⠀⠀⠀⡿⣆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⣽⣿⣽⣿⡟⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⣷⣾⣾⡟⣧⣻
      ⠀⠀⢸⠀⠀⠀⠀⠀⠀⠀⠀⡇⠹⡆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⠗⠘⣿⣿⣿⣿⣿⣿⣿⣿⣿⣏⠻⣿⣝⣿⢿⠙⣷⠘
      ⠀⠀⢸⡄⠀⠀⠀⠀⠀⠀⢀⡇⠀⢷⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⢠⣾⡏⣼⣿⣺⠏⣿⢹⢧⠸⣾⡆⢹⣿⣏⢡⢳⣯⢱
      ⠀⠀⠈⡇⠀⠀⠀⠀⠀⢰⣼⠃⠀⠟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣼⣿⣿⢻⣿⡟⠀⢻⣿⡿⣧⢹⢿⣄⣿⣿⡜⠈⣿⠋
      ⠀⠀⠀⢾⡀⠀⠀⠀⠀⠈⢻⡒⠼⡑⠢⣄⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⣿⡧⢼⣿⠀⠀⠈⣿⣧⠙⣿⣞⢿⣷⣿⠃⠀⣿⠆
      ⠀⠀⠀⠈⢷⡄⠀⠀⠀⢀⡇⡼⠄⠀⡎⡴⢛⠶⣄⡀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⡟⠀⠈⣿⠷⠀⠀⠘⢿⡿⠿⣿⣌⢿⡏⠀⠀⣟⠆
      ⠀⠀⠀⠀⠈⢳⡦⣀⢀⡜⠀⠙⠦⠠⣱⢡⠿⠻⠓⣻⣦⡀⠀⠀⠀⠀⠀⣸⣿⢻⣇⡷⠲⣶⣟⠀⡆⠀⠀⠘⣿⣤⣹⣿⢻⡇⡆⠀⡍⠄
      ⠀⠀⠀⠀⠀⠀⠻⣿⡟⠀⠀⠀⠀⠀⠹⡞⠐⠍⠀⠀⠀⠙⡢⣄⠀⠀⠀⣿⣿⢿⣯⡁⢸⣿⣿⠇⢵⠀⠀⠠⡿⣿⣿⡿⣼⣧⢣⣄⡇⣄
      ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠻⡆⠀⠀⠀⠀⠀⠈⠉⠳⢄⣀⣿⣹⡘⡇⠻⢄⣭⡟⠀⠀⠀⠀⠀⣴⢿⣿⢇⣽⣿⡸⣿⡇⢹
      ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢳⡆⠀⠀⠀⠀⠀⠀⠀⠰⢿⣿⣿⢾⣇⠀⠀⠈⠀⠀⠀⠀⠀⠀⠙⡖⠲⠟⣻⣷⣿⣿⢇⠸
      ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢿⣄⠀⠀⠀⠀⠀⠀⠀⠈⣿⣿⠺⣿⠀⠀⠀⠀⠀⡔⠀⠀⠀⠀⠀⠀⠀⢹⣿⣿⣿⣸⠀
      ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⣯⠂⠀⠀⠀⠀⠀⠀⠀⣿⣿⡄⣿⡆⠀⠀⠀⠀⠷⠶⠀⠀⠀⠀⠀⠀⣸⡿⢿⡟⠇⠀
      ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⣦⠀⠀⠀⢄⢀⠀⠀⣿⣿⣧⢹⣿⡄⠀⠀⣠⣤⣄⡀⠀⠀⠀⠀⣰⡟⡦⠉⡇⠀⠀
      ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢣⡀⠀⠘⡸⡀⢀⢸⣿⣿⢘⣿⣿⣆⠀⣿⡏⠘⠙⣆⠀⢀⡴⢻⣻⠇⠠⣧⢰⠁
      ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢻⣶⡀⢳⠀⠀⣸⣿⣿⣹⣿⠟⠋⢱⣬⡯⠽⢭⣟⣴⠏⠀⢸⣏⣸⣸⣿⣾⡄
      ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢻⡷⡳⡆⠐⢹⣿⣟⡇⣯⣧⠀⡏⠘⡌⠙⢉⡴⠋⠀⠀⢸⣿⣷⣿⣧⣿⡷
      ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠹⣽⣼⡀⠈⣿⢹⢹⢽⡽⣿⡅⣠⠷⠖⠉⠀⠀⠀⢀⡿⣿⣿⣿⣿⢸⡇
      ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⢷⡃⠀⢹⣿⣧⣧⣷⠈⡿⠇⠀⠀⠀⠀⠀⠀⣾⣿⡽⣡⣣⡟⡘⡇
      ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢷⡰⠈⣿⣿⢿⣿⣧⢳⠒⠋⡗⠠⠤⠤⣼⣿⡿⣽⣾⣹⣇⣇⠇
      ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⣷⡀⠘⣿⡆⠙⢯⣻⡗⠀⣇⣀⣴⣾⣿⣿⣤⠿⢿⣟⠧⠼⠀
      '
      # Load environment variables from a .env file
      lef() {
        local env_file="''${1:-.env}"
        if [ -f "$env_file" ]; then
          export $(grep -v '^#' "$env_file" | xargs)
          echo "File $env_file load successful."
        else
          echo "File $env_file does not exist."
        fi
      }

      fofwc() {
        local foldername="''${1:-.}"
        if [ -d "$foldername" ]; then
          awk 'FNR==1 { print "\n===== FILE:", FILENAME, "=====" } { print }' "$foldername"/*
        else
          echo "Directory $foldername does not exist."
        fi
      }
      fofwc_r() {
        local ROOT="$1"
        shift

        local FIND_ARGS=()
        for dir in "$@"; do
          FIND_ARGS+=( ! -path "*/$dir/*" )
        done

        find "$ROOT" -type f "''${FIND_ARGS[@]}" | while read -r file; do
          echo
          echo "===== FILE: $file ====="
          cat "$file"
        done
      }
      for dir in "$HOME/bin"/*/; do
        if [ -d "$dir" ]; then
          PATH="$dir:$PATH"
        fi
      done
      PATH="$HOME/bin:$PATH"
      export PATH
      export VISUAL="nvim"
      export EDITOR="nvim"
    '';
    shellAliases = {
      # Quick access to the current project development environment
      f = ''basename "$PWD"'';
      # Alias to enter nix development shell
      nd = "nix develop";
    };
  };
}
