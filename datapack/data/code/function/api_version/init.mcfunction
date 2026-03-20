scoreboard players add .total requests 1
scoreboard players add .api_version requests 1

tellraw @a[tag=is_admin,tag=!ignore] [{text:"API response code: ",color:aqua},{storage:api,nbt:"version.status_code",color:gold}]

function code:api_version/display
setblock 2 65 5 stone_button[powered=false,facing=north,face=wall]