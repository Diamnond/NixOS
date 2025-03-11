{ config, pkgs, inputs, ... }:

{  
  environment.systemPackages = with pkgs; [
    wget
    brave
    thunderbird
    vscode
    
  ];
}

