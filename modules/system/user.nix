{...}: {
  flake.nixosModules.user = {...}: {
    users.users.benjad = {
      isNormalUser = true;
      initialPassword = "password";
      extraGroups = [
        "wheel"
        "networkmanager"
      ];
    };
  };
}
