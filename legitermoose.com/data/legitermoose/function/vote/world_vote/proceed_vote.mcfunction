# Store Vote in Storage
$data modify storage legitermoose:votes votes[{id:$(id)}].uuids prepend value {id:[]}
$data modify storage legitermoose:votes votes[{id:$(id)}].uuids[0].id set from entity @s UUID

execute at @s run playsound entity.player.levelup ui @s ~ ~ ~ 1 2

# add votes
execute if entity @s[tag=!is_am] run scoreboard players add .world_vote legitermoose.misc 1
$execute if entity @s[tag=!is_am] run tellraw @s \
[{text:"Yᴏᴜ ʜᴀᴠᴇ ᴠᴏᴛᴇᴅ ꜰᴏʀ ᴡᴏʀʟᴅ ɪᴅ ",color:dark_green},{text:"$(id)",color:green},{text:".\n",color:dark_green},{text:"Iᴛ ɴᴏᴡ ʜᴀꜱ ",color:yellow},{score:{name:".world_vote",objective:legitermoose.misc},color:yellow},{text:" ᴠᴏᴛᴇꜱ! (+1)",color:yellow}]

execute if entity @s[tag=is_am,tag=!is_fm] run scoreboard players add .world_vote legitermoose.misc 2
$execute if entity @s[tag=is_am,tag=!is_fm] run tellraw @s \
[{text:"Yᴏᴜ ʜᴀᴠᴇ ᴠᴏᴛᴇᴅ ꜰᴏʀ ᴡᴏʀʟᴅ ɪᴅ ",color:dark_green},{text:"$(id)",color:green},{text:".\n",color:dark_green},{text:"Iᴛ ɴᴏᴡ ʜᴀꜱ ",color:yellow},{score:{name:".world_vote",objective:legitermoose.misc},color:yellow},{text:" ᴠᴏᴛᴇꜱ! (+2)",color:yellow}]


execute if entity @s[tag=is_fm,tag=!is_fm2] run scoreboard players add .world_vote legitermoose.misc 3
$execute if entity @s[tag=is_fm,tag=!is_fm2] run tellraw @s \
[{text:"Yᴏᴜ ʜᴀᴠᴇ ᴠᴏᴛᴇᴅ ꜰᴏʀ ᴡᴏʀʟᴅ ɪᴅ ",color:dark_green},{text:"$(id)",color:green},{text:".\n",color:dark_green},{text:"Iᴛ ɴᴏᴡ ʜᴀꜱ ",color:yellow},{score:{name:".world_vote",objective:legitermoose.misc},color:yellow},{text:" ᴠᴏᴛᴇꜱ! (+3)",color:yellow}]


execute if entity @s[tag=is_fm2,tag=!is_xm] run scoreboard players add .world_vote legitermoose.misc 4
$execute if entity @s[tag=is_fm2,tag=!is_xm] run tellraw @s \
[{text:"Yᴏᴜ ʜᴀᴠᴇ ᴠᴏᴛᴇᴅ ꜰᴏʀ ᴡᴏʀʟᴅ ɪᴅ ",color:dark_green},{text:"$(id)",color:green},{text:".\n",color:dark_green},{text:"Iᴛ ɴᴏᴡ ʜᴀꜱ ",color:yellow},{score:{name:".world_vote",objective:legitermoose.misc},color:yellow},{text:" ᴠᴏᴛᴇꜱ! (+4)",color:yellow}]


execute if entity @s[tag=is_xm] run scoreboard players add .world_vote legitermoose.misc 5
$execute if entity @s[tag=is_xm] run tellraw @s \
[{text:"Yᴏᴜ ʜᴀᴠᴇ ᴠᴏᴛᴇᴅ ꜰᴏʀ ᴡᴏʀʟᴅ ɪᴅ ",color:dark_green},{text:"$(id)",color:green},{text:".\n",color:dark_green},{text:"Iᴛ ɴᴏᴡ ʜᴀꜱ ",color:yellow},{score:{name:".world_vote",objective:legitermoose.misc},color:yellow},{text:" ᴠᴏᴛᴇꜱ! (+5)",color:yellow}]


# store in the world that you have voted
$execute store result storage legitermoose:worlds worlds[{world_id:$(id)}].votes int 1 run scoreboard players get .world_vote legitermoose.misc
