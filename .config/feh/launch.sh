FILE=$(find ~/documents/pictures/wallpaper -type f | shuf -n 1)

# feh --randomize --bg-fill ~/documents/pictures/wallpaper --no-fehbg
feh --bg-fill $FILE --no-fehbg
