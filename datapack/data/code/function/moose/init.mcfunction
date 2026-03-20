# Get request to players endpoint
tellraw @a[tag=is_admin,tag=!ignore] {text:"Calling API... (Moose Detect)",color:dark_purple}

http store a b callback code:moose/detect send "https://api.legiti.dev/players" GET

