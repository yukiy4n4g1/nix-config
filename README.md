# nix-config

## 環境構築

### NixOS以外のLinux

```shell
# nixのインストール
sh <(curl -L https://nixos.org/nix/install) --daemon

# flakeの有効化
mkdir -p ~/.config/nix
echo "experimental-features = nix-command flakes" >> ~/.config/nix/nix.conf

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

### MacOS

```shell
# nixのインストール 
# https://github.com/DeterminateSystems/nix-installer
curl --proto '=https' --tlsv1.2 -sSf -L https://install.determinate.systems/nix | \
  sh -s -- install

# flakeの有効化
mkdir -p ~/.config/nix
echo "experimental-features = nix-command flakes" >> ~/.config/nix/nix.conf

# home-managerのインストール 
nix-channel --add https://github.com/nix-community/home-manager/archive/master.tar.gz home-manager
nix-channel --update
nix-shell '<home-manager>' -A install

# nix-configの適用
# 既存の設定ファイルは .bck 拡張子でバックアップされる
# 環境変数を読み込むので--impureが必要
home-manager switch -b bck --flake .#darwin --impure

# update
nix flake update && home-manager switch --flake .#darwin --impure
```

### SSL証明書の設定

```shell
# オプション:SSL証明書の設定
# ~/.config/nix/nix.confでもいい？
# 再起動が必要
sudo echo "ssl-cert-file = /path/to/my-certificate-bundle.crt" >> /etc/nix/nix.conf
```
