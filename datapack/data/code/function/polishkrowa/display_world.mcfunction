scoreboard players add .total requests 1
scoreboard players add .polish_online_world_request requests 1

# If errors, stop execution.
execute if data storage a temp.c.world.error run tellraw @a[tag=is_admin,tag=!ignore] [{text:"\n⚠ An error occured!\nError: ",color:red},{storage:a,nbt:temp.c.world.error.message}]
execute if data storage a temp.c.world.error run return fail

execute if data storage a {temp:{c:{world:{status_code:200}}}} run tellraw @a[tag=is_admin,tag=!ignore] [{text:"(API) Rᴇꜱᴘᴏɴꜱᴇ: ",color:gray},{storage:a,nbt:"temp.c.world.status_code",color:dark_green}]
execute unless data storage a {temp:{c:{world:{status_code:200}}}} run tellraw @a[tag=is_admin,tag=!ignore] [{text:"(API) Rᴇꜱᴘᴏɴꜱᴇ: ",color:gray},{storage:a,nbt:"temp.c.world.status_code",color:yellow}]

execute as @e[type=text_display,tag=polish_world] run data modify entity @s text.text set value "PolishKrowa is in \""
execute as @e[type=text_display,tag=polish_world] run data modify entity @s text.extra[0] set from storage a temp.c.world.response.raw_name
execute as @e[type=text_display,tag=polish_world] if data storage a temp.c{uuid:"lobby"} run data modify entity @s text.extra[0] set value {text:"Lobby",color:gold}

execute as @e[type=text_display,tag=polish_world] run data modify entity @s text.extra[1] set value "\"."


function code:polishkrowa/display_world_macro with storage a temp.c.world.response
