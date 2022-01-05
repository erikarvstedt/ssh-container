cd "${BASH_SOURCE[0]%/*}"
extra-container create --start --nixpkgs-path "fetchTarball https://github.com/NixOS/nixpkgs/archive/670c11d0da40c38f5d84a1cde13b52ff4d55b3bb.tar.gz" ./ssh-container.nix
