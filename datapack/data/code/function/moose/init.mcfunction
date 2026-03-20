# Get request to players endpoint
tellraw @a[tag=is_admin,tag=!ignore] {text:"Cᴀʟʟɪɴɢ API... (Mᴏᴏꜱᴇ Dᴇᴛᴇᴄᴛ)",color:"#333388"}

http store a b callback code:moose/detect send "https://api.legiti.dev/players" GET

