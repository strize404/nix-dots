# A fairly simple nix flake for my decade old macbook air

> [!WARNING]
> This is purely experimental as i am still figuring stuff out.
> DO NOT use it unless you know what you are doing cause i clearly don't

# a pointer for the lost

1. Camera : services.dbus.enable = true; (a simple interprocess messaging system) and hardware.facetimehd.enable = true; (the Camera kernel module) will likely make the camera work. you need both otherwise in my experience the wifi stops working. Also use obs studio cause other camera apps are prone to freeze.
