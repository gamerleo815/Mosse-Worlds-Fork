scoreboard players add .total requests 1
scoreboard players add .live_vote_count requests 1

execute if data storage a {a:{status_code:200}} run tellraw @a[tag=is_admin,tag=!ignore] [{text:"(API) Rᴇꜱᴘᴏɴꜱᴇ: ",color:gray},{storage:a,nbt:"a.status_code",color:dark_green}]
execute unless data storage a {a:{status_code:200}} run tellraw @a[tag=is_admin,tag=!ignore] [{text:"(API) Rᴇꜱᴘᴏɴꜱᴇ: ",color:gray},{storage:a,nbt:"a.status_code",color:yellow}]

function code:update_text_display with storage api vote_count.response