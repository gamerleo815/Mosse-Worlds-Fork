# basically this is the On World Join function
tag @s remove legitermoose.is_playing
tp @s 0 64 0
gamemode adventure @s[tag=!is_admin]
clear @s
scoreboard players reset @s leave