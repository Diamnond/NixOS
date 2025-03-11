{ config, pkgs, inputs, ... }:

{  
  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.dgm = {
    isNormalUser = true;
    description = "David Malmstrøm";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [
      kdePackages.kate
    ];
  };

  home-manager = {
    # also pass inputs to home-manager modules
    extraSpecialArgs = { inherit inputs; };
    users = {
      "dgm" = import ./home.nix;
    };
  };
}
