{
  ubuntu_18-04 = {
    prod = {
      channel = "prod";
      hash = "sha512-tdAqs+ShXbxnjVn8bIQD4PlKL++2MDyvkhPgIuaUFc+z7yqDcNhL7RkXnCSQYa/rkd/a2O9GxX4BmM3sIBnaSQ==";
      name = "shadow-client";
      releaseDate = "2022-09-08T09:40:16.941Z";
      subSystem = "ubuntu_18.04";
      system = "linux";
      url = "https://update.shadow.tech/launcher/prod/linux/ubuntu_18.04/Shadow-5.0.1168.AppImage";
      version = "5.0.1168";
    };

    preprod = {
      channel = "preprod";
      hash = "sha512-C8q6q+k37WQ40eRUnEuPYDAYbbnaq9x0GoLF6iRA/Z9ZaXBLrLTd++FU2u+QSnaeUnIy4nslO9SY4glohySIuw==";
      name = "shadow-client-preprod";
      releaseDate = "2022-09-26T09:38:42.145Z";
      subSystem = "ubuntu_18.04";
      system = "linux";
      url = "https://update.shadow.tech/launcher/preprod/linux/ubuntu_18.04/ShadowBeta-5.0.1182.AppImage";
      version = "5.0.1182";
    };

    testing = {
      channel = "testing";
      hash = "sha512-ZKkRx7//ClzNDsSVGiML+lYQeqFNwi/XH6+bHMYxSLEeuN52qGlA3FMk++fZHfDNuY78Ko/GS7S/xFt+gzUgOQ==";
      name = "shadow-client-testing";
      releaseDate = "2022-10-11T07:45:47.846Z";
      subSystem = "ubuntu_18.04";
      system = "linux";
      url = "https://update.shadow.tech/launcher/testing/linux/ubuntu_18.04/ShadowAlpha-8.0.10002.AppImage";
      version = "8.0.10002";
    };
  };
}
