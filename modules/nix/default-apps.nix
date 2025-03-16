{ config, pkgs, inputs, ... }:

{  
  environment.systemPackages = with pkgs; [
    wget # downloads files
    brave # browser
    thunderbird # mail client
    vscode # code editor
    git # version control
    curl # downloads files
    htop # system monitor
    fastfetch # system info
    meld # file comparison
    bottles # wine manager
    vlc # media player
    
  ];
}

