# A fairly simple nix flake for my laptop

> [!WARNING]
> This is purely experimental as i am still figuring stuff out.
> DO NOT use it unless you know what you are doing cause i clearly don't

## known issues

1. Couldn't make the camera work : ik it's linux so i wasn't expecting much but i read in a reddit [post](https://www.reddit.com/r/NixOS/comments/1dbev5o/thank_the_lord_for_nixos) that `hardware.facetimehd.enable = true;` will make the camera work but it doesn't for me, and on top of that the wifi stops working when i enable that option. and the camera work for like 2 frames and stops then crashes. maybe cause i'm using the using the proprietary `wl` driver? i have no idea.
