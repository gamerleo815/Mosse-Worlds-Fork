

# store the votes of that world in the score
$execute store result score .world_vote legitermoose.misc run data get storage legitermoose:worlds worlds[{world_id:$(id)}].votes 1

# if you are world owner - part 1
execute store result score .uuid_0 legitermoose.temp run data get entity @s UUID[0]
$execute store result score .world_uuid_0 legitermoose.temp run data get storage legitermoose:worlds worlds[{world_id:$(id)}].uuid[0]
execute if score .uuid_0 legitermoose.temp = .world_uuid_0 legitermoose.temp at @s run playsound block.note_block.bass ui @s ~ ~ ~ 1 .5 1
execute if score .uuid_0 legitermoose.temp = .world_uuid_0 legitermoose.temp run return run tellraw @s {text:"Yᴏᴜ ᴄᴀɴɴᴏᴛ ᴠᴏᴛᴇ ʏᴏᴜʀ ᴏᴡɴ ᴡᴏʀʟᴅ!",color:dark_red}


execute store result score .uuid_1 legitermoose.temp run data get entity @s UUID[1]
$execute store result score .world_uuid_1 legitermoose.temp run data get storage legitermoose:worlds worlds[{world_id:$(id)}].uuid[1]
execute if score .uuid_1 legitermoose.temp = .world_uuid_1 legitermoose.temp at @s run playsound block.note_block.bass ui @s ~ ~ ~ 1 .5 1
execute if score .uuid_1 legitermoose.temp = .world_uuid_1 legitermoose.temp run return run tellraw @s {text:"Yᴏᴜ ᴄᴀɴɴᴏᴛ ᴠᴏᴛᴇ ʏᴏᴜʀ ᴏᴡɴ ᴡᴏʀʟᴅ!",color:dark_red}

execute store result score .uuid_2 legitermoose.temp run data get entity @s UUID[2]
$execute store result score .world_uuid_2 legitermoose.temp run data get storage legitermoose:worlds worlds[{world_id:$(id)}].uuid[2]
execute if score .uuid_2 legitermoose.temp = .world_uuid_2 legitermoose.temp at @s run playsound block.note_block.bass ui @s ~ ~ ~ 1 .5 1
execute if score .uuid_2 legitermoose.temp = .world_uuid_2 legitermoose.temp run return run tellraw @s {text:"Yᴏᴜ ᴄᴀɴɴᴏᴛ ᴠᴏᴛᴇ ʏᴏᴜʀ ᴏᴡɴ ᴡᴏʀʟᴅ!",color:dark_red}

execute store result score .uuid_3 legitermoose.temp run data get entity @s UUID[3]
$execute store result score .world_uuid_3 legitermoose.temp run data get storage legitermoose:worlds worlds[{world_id:$(id)}].uuid[3]
execute if score .uuid_3 legitermoose.temp = .world_uuid_3 legitermoose.temp at @s run playsound block.note_block.bass ui @s ~ ~ ~ 1 .5 1
execute if score .uuid_3 legitermoose.temp = .world_uuid_3 legitermoose.temp run return run tellraw @s {text:"Yᴏᴜ ᴄᴀɴɴᴏᴛ ᴠᴏᴛᴇ ʏᴏᴜʀ ᴏᴡɴ ᴡᴏʀʟᴅ!",color:dark_red}


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

