execute as @s[tag=!info] run tellraw @s {text:"You will now automatically receive extended information about a random world.",color:green}
execute as @s[tag=!info] at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~ 0.7
execute as @s[tag=!info] run return run tag @s add info

execute as @s[tag=info] run tellraw @s {text:"You will no longer receive extended information about a random world.",color:red}
execute as @s[tag=info] at @s run playsound block.note_block.bass master @s ~ ~ ~ 0.7 0.5
execute as @s[tag=info] run return run tag @s remove info
