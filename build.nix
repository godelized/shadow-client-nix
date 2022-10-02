{fetchurl}: {
  linux = {appimageTools}: shadow:
    appimageTools.wrapType2 {
      name = shadow.name;
      version = shadow.version;
      src = fetchurl {
        url = shadow.url;
        hash = shadow.hash;
      };
      extraPkgs = pkgs:
        with pkgs; [
          libGL
          libva
          libinput
          libpulseaudio
          nss_latest
        ];
    };

  mac = {}: shadow:
    abort "build on macOS unimplemented, feel free to contribute";
}
