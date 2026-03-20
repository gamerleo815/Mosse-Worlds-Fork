tellraw @a[tag=is_admin,tag=!ignore] {text:"Calling API (PolishKrowa Get World)",color:dark_purple}

# Get UUID
$http store a temp.c.world callback code:polishkrowa/display_world send "https://api.legiti.dev/world/$(uuid)" GET
