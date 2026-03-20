tellraw @a[tag=is_admin,tag=!ignore] {text:"Calling API... (World Browser)",color:dark_purple}

# Store data in HTTP
http callback code:browser/populate store a a send "https://api.legiti.dev/top/6" GET

