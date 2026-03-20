scoreboard players set .globaltimer misc 0

scoreboard players add .total requests 1
scoreboard players add .moose_online requests 1

# If errors, stop execution.
execute if data storage a b.error run tellraw @a[tag=is_admin,tag=!ignore] [{text:"\n⚠ An error occured!\nError: ",color:red},{storage:a,nbt:b.error.message}]
execute if data storage a b.error run return fail

execute if data storage a {b:{status_code:200}} run tellraw @a[tag=is_admin,tag=!ignore] [{text:"(API) Rᴇꜱᴘᴏɴꜱᴇ: ",color:gray},{storage:a,nbt:"b.status_code",color:dark_green}]
execute unless data storage a {b:{status_code:200}} run tellraw @a[tag=is_admin,tag=!ignore] [{text:"(API) Rᴇꜱᴘᴏɴꜱᴇ: ",color:gray},{storage:a,nbt:"b.status_code",color:yellow}]

execute if data storage a b.response[{players:["Legitermoose"]}] positioned 9 64 -12 run function code:moose/_found

execute unless data storage a b.response[{players:["Legitermoose"]}] positioned 9 64 -12 run function code:moose/_notfound