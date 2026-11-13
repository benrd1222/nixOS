{...}: {
  flake.nixosModules.bootloader = {pkgs, ...}: {
    boot = {
      loader = {
        timeout = 2;
        efi = {
          canTouchEfiVariables = true;
        };
        grub = {
          efiSupport = true;
          device = "nodev";
        };
      };
			# no idea if this works
      plymouth = {
        enable = true;
        theme = "alt_loader";
        themePackages = with pkgs; [
          adi1090x-plymouth-themes
        ];
      };
    };
  };
}
