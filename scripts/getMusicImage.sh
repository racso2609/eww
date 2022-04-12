
#!/bin/bash

LOCK_FILE="$HOME/.cache/eww-music.png"

rm "$LOCK_FILE"
touch "$LOCK_FILE"
playerctl metadata | awk 'FNR == 3 {print $3}' | xargs curl > "$LOCK_FILE" 
