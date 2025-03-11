{ config, pkgs, inputs, ... }:

{  
  environment.systemPackages = with pkgs; [
    wget
    brave
    thunderbird
    vscode
    git
    curl
    htop
    fastfetch
  ];
}

