{ pkgs, ... }:

{
  programs.helix = {
    enable = true;

    extraPackages = with pkgs; [
      nixd
      typescript-language-server
    ];

    settings = {
      theme = "tokyonight";

      keys.insert = {
        j = {
          k = "normal_mode";
        };
      };

      editor = {
        bufferline = "multiple";
        color-modes = true;
        cursorline = true;
        true-color = true;
        end-of-line-diagnostics = "hint";

        cursor-shape = {
          insert = "bar";
          normal = "block";
          select = "underline";
        };

        file-picker = {
          hidden = false;
        };

        statusline = {
          left = ["mode" "spinner"];
          center = ["file-name"];
          right = ["diagnostics" "selections" "position" "file-encoding" "file-line-ending" "file-type"];
          separator = "│";
          mode.normal = "NORMAL";
          mode.insert = "INSERT";
          mode.select = "SELECT";
        };

        whitespace = {
          render = {
            space = "none";
            tab = "all";
            newline = "all";
          };
        };

        indent-guides = {
          render = true;
          # character = "▏"; # insertのbar表示と見分けがつかないのでデフォルト表示にする
        };

        inline-diagnostics = {
          cursor-line = "warning";
        };
      };
    };

    ignores = [
      "!.env"
    ];

    languages = {
      language = [
        {
          name = "rust";
          auto-format = false;
        }
        {
          name = "nix";
          language-servers = [ "nixd" "nil" ];
        }
      ];

      language-server = {
        nixd = {
          command = "nixd";
        };
      };
    };
  };
}
