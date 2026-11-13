{...}: {
  flake.nixosModules.networking = {...}: {
    networking = {
      networkManager.enable = true;
      hostName = "msiBD";
    };
  };
}
