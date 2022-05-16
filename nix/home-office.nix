{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    firefox
    thunderbird
    slack
    authy
    appimage-run
    altair
    headsetcontrol
    qgis
  ];
}
