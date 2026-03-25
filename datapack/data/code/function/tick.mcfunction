team join player @a[team=]
effect give @a[nbt=!{active_effects:[{id:"minecraft:saturation"}]}] saturation 100 1 true
execute store result score .players misc if entity @a

execute as @a unless score @s id matches -2147483648..2147483647 run function code:_id

execute as @a run function code:realtime/set

execute as @a[x=1,y=64,z=26,dx=-2,dy=2,dz=1] at @s run tp @s ~100 ~ ~-26

# Random World Button
execute positioned 0 65 5 if block ~ ~ ~ stone_button[powered=true] run http callback code:random_world/init store api random send "https://api.legiti.dev/world/random" GET

# Good World Button
execute positioned -2 65 5 if block ~ ~ ~ polished_blackstone_button[powered=true] run http callback code:good_world/get store api good_world send "https://api.legiti.dev/world/random" GET

# Version Info Button
execute positioned 2 65 5 if block ~ ~ ~ stone_button[powered=true] run http callback code:api_version/init store api version send "https://api.legiti.dev/" GET

# Toggle Info 
scoreboard players enable @a toggle_info
execute as @a[scores={toggle_info=1..}] at @s run function code:toggle_info/toggle
scoreboard players reset @a[scores={toggle_info=1..}] toggle_info
scoreboard players reset @a[tag=legitermoose.is_playing] toggle_info

# /http timer
scoreboard players add .globaltimer misc 1
execute if score .globaltimer misc matches 600 run function code:live_vote_count/init
execute if score .globaltimer misc matches 1200 run function code:playerdetect/init

# Timeout
scoreboard players remove @a[scores={timeout=1..}] timeout 1
scoreboard players add @a timeout 0
visibility @a[scores={timeout=1..},tag=!is_admin] show @e[tag=show_for_timed_out_users]
visibility @a[scores={timeout=..0},tag=!is_admin] hide @e[tag=show_for_timed_out_users]
visibility @a[tag=is_admin] hide @e[tag=show_for_timed_out_users]

execute as @e[type=interaction,tag=chest_protection_interaction] on target at @s run function code:browser/timed_out

scoreboard players enable @a offset
execute as @a[scores={offset=-2147483648..2147483647}] unless score @s offset = @s hour2 run function code:realtime/update_offset

execute if entity @a[name=olaf_294] run setblock 10 65 -35 bedrock
execute unless entity @a[name=olaf_294] run setblock 10 65 -35 air

# discord interaction
execute as @e[type=interaction,tag=discord_join] on target run tellraw @s {text:"Click here to join the discord!",color:blue,underlined:1b,click_event:{action:"open_url",url:"https://discord.gg/KTAusBx2GH"}}
execute as @e[type=interaction,tag=discord_join] run data remove entity @s interaction