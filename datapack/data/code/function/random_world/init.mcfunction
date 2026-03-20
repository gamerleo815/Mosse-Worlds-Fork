scoreboard players add .total requests 1
scoreboard players add .random_world requests 1

function code:random_world/display with storage api random.response
setblock 0 65 5 stone_button[powered=false,facing=north,face=wall]