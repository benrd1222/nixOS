{
  self,
  inputs,
  ...
}: {
  flake.nixosConfigurations.msibd = inputs.nixpkgs.lib.nixosSystem {
    modules = with self.nixosModules; [
      system
      user
      networking
      bootloader
    ];
  };
}
