{
  ubuntu_18-04 = {
    prod = {
      channel = "prod";
      hash = "sha512-YT/KaiAt4ZCFGiOTR4wxEEDG4mtskhbH4Gks5iTomrc2ajzhWBScVio6KnDYdOyLo1X0JAZbQjBa84w8M1rkUA==";
      name = "shadow-client";
      releaseDate = "2022-11-07T17:32:07.591Z";
      subSystem = "ubuntu_18.04";
      system = "linux";
      url = "https://update.shadow.tech/launcher/prod/linux/ubuntu_18.04/Shadow-8.0.10018.AppImage";
      version = "8.0.10018";
    };

    preprod = {
      channel = "preprod";
      hash = "sha512-/HMTpcHUBsWTP9dB3F1KGNlT0+mhfaYqmeHqhJ4JGd2Q7ITU5iVNGE0C0crZG+8m92u2lSNRhwSN0zUv/5BXxw==";
      name = "shadow-client-preprod";
      releaseDate = "2022-10-26T14:26:56.807Z";
      subSystem = "ubuntu_18.04";
      system = "linux";
      url = "https://update.shadow.tech/launcher/preprod/linux/ubuntu_18.04/ShadowBeta-8.0.10012.AppImage";
      version = "8.0.10012";
    };

    testing = {
      channel = "testing";
      hash = "sha512-loxi352FncQWiOX7unWLHgFHOXSdYdXMsUwEmxRwvw7jiprjNSjzXitU9zGMQHO22KcI2diKCVA8GbIjFRd4hw==";
      name = "shadow-client-testing";
      releaseDate = "2022-11-30T10:38:54.092Z";
      subSystem = "ubuntu_18.04";
      system = "linux";
      url = "https://update.shadow.tech/launcher/testing/linux/ubuntu_18.04/ShadowAlpha-8.0.10029.AppImage";
      version = "8.0.10029";
    };
  };
}
