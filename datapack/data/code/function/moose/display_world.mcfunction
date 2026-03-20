scoreboard players add .total requests 1
scoreboard players add .moose_online_world_request requests 1

# If errors, stop execution.
execute if data storage a temp.b.world.error run tellraw @a[tag=is_admin,tag=!ignore] [{text:"\n⚠ An error occured!\nError: ",color:red},{storage:a,nbt:temp.b.world.error.message}]
execute if data storage a temp.b.world.error run return fail

execute if data storage a {temp:{b:{world:{status_code:200}}}} run tellraw @a[tag=is_admin,tag=!ignore] [{text:"(API) Rᴇꜱᴘᴏɴꜱᴇ: ",color:gray},{storage:a,nbt:"temp.b.world.status_code",color:dark_green}]
execute unless data storage a {temp:{b:{world:{status_code:200}}}} run tellraw @a[tag=is_admin,tag=!ignore] [{text:"(API) Rᴇꜱᴘᴏɴꜱᴇ: ",color:gray},{storage:a,nbt:"temp.b.world.status_code",color:yellow}]

execute as @e[type=text_display,tag=moss_world] run data modify entity @s text.text set value "Legitermoose is in \""
execute as @e[type=text_display,tag=moss_world] run data modify entity @s text.extra[0] set from storage a temp.b.world.response.raw_name
execute as @e[type=text_display,tag=moss_world] if data storage a temp.c{uuid:"lobby"} run data modify entity @s text.extra[0] set value {text:"Lobby",color:gold}

execute as @e[type=text_display,tag=moss_world] run data modify entity @s text.extra[1] set value "\"."


function code:moose/display_world_macro with storage a temp.b.world.response
