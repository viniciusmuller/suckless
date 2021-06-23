{
  description = "My suckless packages";

  inputs = {
    utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, utils }: {
    overlays = (final: prev: {
      dwm = prev.dwm.overrideAttrs
        (old: rec {
          name = "dwm-custom";
          src = ./dwm;
        });

      dmenu = prev.dmenu.overrideAttrs (old: rec {
        name = "dmenu-custom";
        src = ./dmenu;
      });

      st = prev.st.overrideAttrs (old: rec {
        name = "st-custom";
        buildInputs = old.buildInputs ++ [ prev.harfbuzz ];
        src = ./st;
      });

      slstatus = prev.slstatus.overrideAttrs (old: rec {
        name = "slstatus-custom";
        src = ./slstatus;
      });

      slock = prev.slock.overrideAttrs (old: rec {
        name = "slock-custom";
        buildInputs = old.buildInputs ++ [
          prev.xorg.libXinerama
          prev.xorg.libXft
        ];
        src = ./slock;
      });
    });
  };
}
