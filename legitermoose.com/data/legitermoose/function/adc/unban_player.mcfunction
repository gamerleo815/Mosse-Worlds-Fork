# args:
#   UUID: player uuid to unban
$data remove storage legitermoose:bans global[{id:$(UUID)}]
tellraw @s {text:"Yᴏᴜ ʜᴀᴠᴇ ʙᴇᴇɴ ᴜɴʙᴀɴɴᴇᴅ.",color:green}