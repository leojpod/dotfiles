{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    firefox
    thunderbird
    slack
  ];
}
