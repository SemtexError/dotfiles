~/.config/flashfocus/launch.sh & # Launch flashfocus
~/.config/polybar/launch.sh & # Launch statusbar(s)
~/.config/compton/launch.sh & # Compositor for transparency
~/.config/redshift/launch.sh &  # Blue shift at night
~/.config/scripts/setbg & # Set the wallpaper
~/.config/i3/screens.sh & # Set the monitors (if present)
~/.config/nvidia-led/launch.sh & # Disable LED of the GPU (yes AMD in the future)

# unclutter & # Remove mouse when idle
nm-applet & # Launch network manager applet (Laptop)
libinput-gestures-setup start & # Launch gestures (Laptop)

xss-lock -- ~/.config/i3lock/launch.sh & # Auto lock after a while
