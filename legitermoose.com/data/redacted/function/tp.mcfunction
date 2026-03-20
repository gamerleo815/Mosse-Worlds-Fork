tp @s 1000 64 0 90 0
tellraw @s [{text:"Connecting to legitermoose.com...",color:gray}]

tag @s add legitermoose.is_playing
function legitermoose:lobby/join/rank_join

execute if entity @s[tag=legitermoose.lobby.gmsp] run gamemode spectator @s
execute if entity @s[tag=legitermoose.lobby.gmc] run gamemode creative @s
execute if entity @s[tag=legitermoose.lobby.gms] run gamemode survival @s
execute if entity @s[tag=legitermoose.lobby.gma] run gamemode adventure @s

scoreboard players add .visits legitermoose.misc 1

item replace entity @s player.cursor with air

inventory @s close
