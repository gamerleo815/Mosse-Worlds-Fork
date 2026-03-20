#scoreboard players set .globaltimer misc 0

scoreboard players add .total requests 1
scoreboard players add .polish_online requests 1

# If errors, stop execution.
execute if data storage a c.error run tellraw @a[tag=is_admin,tag=!ignore] [{text:"\n⚠ An error occured!\nError: ",color:red},{storage:a,nbt:c.error.message}]
execute if data storage a c.error run return fail

tellraw @a[tag=is_admin,tag=!ignore] [{text:"API response code: ",color:aqua},{storage:a,nbt:"c.status_code",color:gold}]

execute if data storage a c.response[{players:["PolishKrowa"]}] positioned 9 64 -20 run function code:polishkrowa/_found

execute unless data storage a c.response[{players:["PolishKrowa"]}] positioned 9 64 -20 run function code:polishkrowa/_notfound