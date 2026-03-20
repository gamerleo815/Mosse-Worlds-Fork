tellraw @a[tag=is_admin,tag=!ignore] {text:"Calling API (Moose Get World)",color:dark_purple}

# Get UUID
$http store a temp.b.world callback code:moose/display_world send "https://api.legiti.dev/world/$(uuid)" GET
