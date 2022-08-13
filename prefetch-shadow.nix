{
  fetchurl,
  runCommandLocal,
  yq,
  system ? "linux",
  subSystem ? "ubuntu_18.04",
  channel ? "prod", # prod, preprod, testing
}:
let 
  latest-yml = builtins.fetchurl
    "https://storage.googleapis.com/shadow-update/launcher/${channel}/${system}/${subSystem}/latest-${system}.yml";

  latest = builtins.fromJSON (
    builtins.readFile (
      runCommandLocal "latest-json" {
        buildInputs = [ yq ];
      }
      "yq -crM '.' ${latest-yml} > $out"
    )
  );
in {
  name = "shadow-client" + (if channel == "prod" then "" else "-" + channel);
  channel = channel;
  system = system;
  subSystem = subSystem;
  version = latest.version;
  releaseDate = latest.releaseDate;
  url = "https://update.shadow.tech/launcher/${channel}/${system}/${subSystem}/${latest.path}";
  hash = "sha512-${latest.sha512}";
}
