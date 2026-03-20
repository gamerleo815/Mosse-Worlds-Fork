scoreboard players add .total requests 1
scoreboard players add .live_vote_count requests 1

tellraw @a[tag=is_admin,tag=!ignore] [{text:"API response code: ",color:aqua},{storage:a,nbt:"a.status_code",color:gold}]


function code:update_text_display with storage api vote_count.response