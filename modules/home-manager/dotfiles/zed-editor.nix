{ pkgs, ... }:
{
  programs.zed-editor = {
    enable = true;

    userSettings = {
      vim_mode = true;

      theme = {
        mode = "dark";
        light = "Tokyo Night Light";
        dark = "Tokyo Night";
      };

      features = {
        edit_prediction_provider = "copilot";
      };

      lsp = {
        nixd.settings.diagnostic.suppress = [ "sema-extra-with" ];
      };
    };

    userKeymaps = [
      {
        context = "vim_mode == insert";
        bindings = {
          "j k"= "vim::NormalBefore";
        };
      }
    ];

    extensions = [
      "nix"
      "tokyo-night"
    ];

    extraPackages = [ pkgs.nixd ];
  };
}
