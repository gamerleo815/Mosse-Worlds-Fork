scoreboard players set .globaltimer misc 0

# =-=-=-= Moose Detect =-=-=-=
scoreboard players add .total requests 1
scoreboard players add .moose_online requests 1

# If errors, stop execution.
execute if data storage player_detect a.error run tellraw @a[tag=is_admin,tag=!ignore] [{text:"\n⚠ An error occured!\nError: ",color:red},{storage:player_detect,nbt:a.error.message}]
execute if data storage player_detect a.error run return fail

# General Status Message
execute if data storage player_detect {a:{status_code:200}} run tellraw @a[tag=is_admin,tag=!ignore] [{text:"(API) Rᴇꜱᴘᴏɴꜱᴇ: ",color:gray,hover_event:{action:show_text,value:"API - Detect Players"}},{storage:player_detect,nbt:"a.status_code",color:dark_green}]
execute unless data storage player_detect {a:{status_code:200}} run tellraw @a[tag=is_admin,tag=!ignore] [{text:"(API) Rᴇꜱᴘᴏɴꜱᴇ: ",color:gray,hover_event:{action:show_text,value:"API - Detect Players"}},{storage:player_detect,nbt:"a.status_code",color:yellow}]

# Moose Online/Offline
execute if data storage player_detect a.response[{players:["Legitermoose"]}] positioned 9 64 -19 run function code:playerdetect/moose/_found
execute unless data storage player_detect a.response[{players:["Legitermoose"]}] positioned 9 64 -19 run function code:playerdetect/moose/_notfound


# =-=-=-= PolishKrowa Detect =-=-=-=
scoreboard players add .total requests 1
scoreboard players add .polish_online requests 1

execute if data storage player_detect a.response[{players:["PolishKrowa"]}] positioned 9 64 -190 run function code:playerdetect/polishkrowa/_found
execute unless data storage player_detect a.response[{players:["PolishKrowa"]}] positioned 9 64 -19 run function code:playerdetect/polishkrowa/_notfound