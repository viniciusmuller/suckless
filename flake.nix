{
  description = "My suckless packages";

  inputs = {
    utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, utils }:
    utils.lib.eachDefaultSystem (system:
      let
        pkgs = nixpkgs.legacyPackages.${system};
      in
      {
        packages.dmenu = (pkgs.dmenu.overrideAttrs (old: rec {
          name = "dmenu-custom";
          src = ./dmenu;
        }));

        packages.dwm = (pkgs.dwm.overrideAttrs (old: rec {
          name = "dwm-custom";
          src = ./dwm;
        }));

        packages.st = (pkgs.st.overrideAttrs (old: rec {
          name = "st-custom";
          buildInputs = old.buildInputs ++ [ pkgs.harfbuzz ];
          src = ./st;
        }));

        packages.slstatus = (pkgs.slstatus.overrideAttrs (old: rec {
          name = "slstatus-custom";
          src = ./slstatus;
        }));

        packages.slock = (pkgs.slock.overrideAttrs (old: rec {
          name = "slock-custom";
          buildInputs = old.buildInputs ++ [
            pkgs.xorg.libXinerama
            pkgs.xorg.libXft
          ];
          src = ./slock;
        }));
      });
}
