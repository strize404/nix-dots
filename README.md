# A fairly simple nix flake for my laptop

> [!WARNING]
> This is purely experimental as i am still figuring stuff out.
> DO NOT use it unless you know what you are doing cause i clearly don't

## known issues

1. Couldn't make the camera work : i read in a in a reddit [post](https://www.reddit.com/r/NixOS/comments/1dbev5o/thank_the_lord_for_nixos) that `hardware.facetimehd.enable = true;` will make the camera work but it doesn't for me, and on top of that the wifi stops working when i enable that option. and the camera work for like 2 frames and stops then crashes. maybe cause i'm using the using the proprietary `wl` driver.

2. some tmux plugins breaks Tmux, this is Nixos specific as i haven't have this issues in arch or anywhere else. i know which plugins are beraking tmux but i haven't find a solution for it yet, so i just disabled them for now.
