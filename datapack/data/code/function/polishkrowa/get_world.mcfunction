tellraw @a[tag=is_admin,tag=!ignore] {text:"Cᴀʟʟɪɴɢ API (PolishKrowa Gᴇᴛ Wᴏʀʟᴅ)",color:"#333388"}

# Get UUID
$http store a temp.c.world callback code:polishkrowa/display_world send "https://api.legiti.dev/world/$(uuid)" GET
