# Get request to players endpoint
tellraw @a[tag=is_admin,tag=!ignore] {text:"Cᴀʟʟɪɴɢ API... (PᴏʟɪꜱʜKʀᴏᴡᴀ ᴅᴇᴛᴇᴄᴛ)",color:"#333388"}

http store a c callback code:polishkrowa/detect send "https://api.legiti.dev/players" GET

