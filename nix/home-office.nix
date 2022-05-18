{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    firefox
    dropbox
    thunderbird
    slack
    authy
    appimage-run
    altair
    headsetcontrol
    qgis
  ];
}
