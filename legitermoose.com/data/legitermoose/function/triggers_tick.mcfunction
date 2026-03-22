
# Voting
scoreboard players enable @s[tag=legitermoose.is_playing,tag=!legitermoose.has_voted_lobby] vote
scoreboard players enable @s[tag=legitermoose.is_playing,tag=legitermoose.has_voted_lobby,scores={worldid=1..}] vote
execute positioned 0 64 0 run scoreboard players reset @s[distance=..250] vote
execute as @a[scores={vote=1..}] run function legitermoose:vote/vote
scoreboard players reset @s[scores={vote=1..}] vote

# Lobby
scoreboard players enable @s lobby
tp @s[scores={lobby=1..}] 1000 64 0
tag @s[scores={lobby=1..}] add legitermoose.is_playing
execute as @s[scores={lobby=1..}] run playsound block.note_block.pling ui @s ~ ~ ~ 1 2
tellraw @s[scores={lobby=1..}] [{text:"Wᴇʟᴄᴏᴍᴇ ᴛᴏ ",color:gold},{text:"ʟᴇɢɪᴛᴇʀᴍᴏᴏꜱᴇ.ᴄᴏᴍ",color:"#00AAFF",underlined:1b},{text:"! ",color:gold,underlined:0b},"\n",{text:"Cᴏɴɴᴇᴄᴛᴇᴅ ᴛᴏ: ",color:dark_green},{text:"ʟᴏʙʙʏ",color:green}]
clear @s[scores={lobby=1..}] *
scoreboard players reset @s[scores={lobby=1..}] lobby

# Fly
execute positioned 1000 64 0 run scoreboard players enable @s[distance=..250,tag=is_am] fly
execute if score @s fly matches 1.. run function legitermoose:lobby/toggle_fly
execute positioned 1000 64 0 run scoreboard players reset @s[distance=251..] fly
scoreboard players enable @s[scores={legitermoose.rank=10}] fly

# Setttings
scoreboard players enable @s[scores={legitermoose.rank=10}] settings
execute unless score @s legitermoose.rank matches 10 run scoreboard players reset @s settings
execute as @s[scores={settings=1..}] run function legitermoose:world/feat/worldsettings

# Play
scoreboard players enable @s play
execute as @s at @s if score @s play matches 1.. run function legitermoose:world_browser/open
scoreboard players reset @s[scores={play=1..}] play