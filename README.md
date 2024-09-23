# nix-config

## 環境構築

### NixOS以外

```shell
# nixのインストール
sh <(curl -L https://nixos.org/nix/install) --daemon

# flakeの有効化
echo "experimental-features = nix-command flakes" >> .config/nix/nix.conf

# home-managerのインストール 
nix-channel --add https://github.com/nix-community/home-manager/archive/master.tar.gz home-manager
nix-channel --update
nix-shell '<home-manager>' -A install

# nix-configの適用
# 既存の設定ファイルは .bck 拡張子でバックアップされる
home-manager switch -b bck --flake .#pop

# update
nix flake update && home-manager switch --flake .#pop
```