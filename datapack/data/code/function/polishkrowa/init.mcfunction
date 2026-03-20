# Get request to players endpoint
tellraw @a[tag=is_admin,tag=!ignore] {text:"Calling API... (PolishKrowa Detect)",color:dark_purple}

http store a c callback code:polishkrowa/detect send "https://api.legiti.dev/players" GET

