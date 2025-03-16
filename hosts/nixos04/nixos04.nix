{ config, pkgs, inputs, ... }:

{  
  environment.systemPackages = with pkgs; [
    protonplus # GUI for managing proton versions
    heroic # Epic Games Store  and GOG client
  ];
  
  programs.steam.enable = true; # Install steam

}

