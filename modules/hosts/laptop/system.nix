{...}: {
  flake.nixosModules.system = {pkgs, ...}: {
    # import tree means we can put the pkgs in this line and have it find the right pkgs for each system
    environment.systemPackages = with pkgs; [
      git
    ];

    imports = [
      /etc/nixos/hardware-configuration.nix
    ];
  };
}
