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

      keys = {
        normal = {
          "C-y" = [
            '':sh rm -f /tmp/unique-file''
            '':insert-output yazi "%{buffer_name}" --chooser-file=/tmp/unique-file''
            '':sh printf "\x1b[?1049h\x1b[?2004h" > /dev/tty''
            '':open %sh{cat /tmp/unique-file}''
            '':redraw''
            '':set mouse false''
            '':set mouse true''
          ];
          "'" = {
            g = [
              '':sh zellij run -c -f -x 5%% -y 5%% --width 90%% --height 90%% -- lazygit''
              '':reload-all''
            ];
          };
        };

        insert = {
          j = {
            k = "normal_mode";
          };
        };
      };

      editor = {
        bufferline = "multiple";
        color-modes = true;
        cursorline = true;
        true-color = true;
        end-of-line-diagnostics = "hint";

        auto-save = {
          focus-lost = true;
          after-delay = {
            enable = true;
            timeout = 3000;
          };
        };

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
