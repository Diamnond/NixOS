{ config, pkgs, inputs, ... }:

{  
  environment.systemPackages = with pkgs; [
    protonplus
    heroic
  ];
  # Install steam
  programs.steam.enable = true;

}

