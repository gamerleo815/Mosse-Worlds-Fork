tellraw @a[tag=is_admin,tag=!ignore] {text:"Cᴀʟʟɪɴɢ API (Mᴏᴏꜱᴇ Gᴇᴛ Wᴏʀʟᴅ)",color:"#333388"}

# Get UUID
$http store a temp.b.world callback code:moose/display_world send "https://api.legiti.dev/world/$(uuid)" GET
