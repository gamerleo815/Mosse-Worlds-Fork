#   execute unless entity @s[tag=legitermoose.is_whitelisted] run tellraw @s [{text:"You have been denied access to this project.",color:red}]
#   execute unless entity @s[tag=legitermoose.is_whitelisted] at @s run return run playsound block.note_block.bass master @s ~ ~ ~ 1 0.5 1



tellraw @s {text:"Connection approved.",color:green}

function legitermoose:items/lobby/update

inventory @s block 992 54 5 <b> </b> <b> </b> <b> </b> <b> </b> <b> </b><blue><u>legitermoose.com