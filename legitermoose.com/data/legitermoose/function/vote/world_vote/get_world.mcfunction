$say world id is $(id)

# store the votes of that world in the score
$execute store result score .world_vote legitermoose.misc run data get storage legitermoose:worlds worlds[{world_id:$(id)}].votes 1

# add votes
execute if entity @s[tag=!is_am] run say non vote (add +1)
execute if entity @s[tag=!is_am] run scoreboard players add .world_vote legitermoose.misc 1

execute if entity @s[tag=is_am,tag=!is_fm] run say am vote (+2)
execute if entity @s[tag=is_am,tag=!is_fm] run scoreboard players add .world_vote legitermoose.misc 2

execute if entity @s[tag=is_fm,tag=!is_fm2] run say fm vote (+3)
execute if entity @s[tag=is_fm,tag=!is_fm2] run scoreboard players add .world_vote legitermoose.misc 3

execute if entity @s[tag=is_fm2,tag=!is_xm] run say fm2 vote (+4)
execute if entity @s[tag=is_fm2,tag=!is_xm] run scoreboard players add .world_vote legitermoose.misc 4

execute if entity @s[tag=is_xm] run say xm vote (add +5)
execute if entity @s[tag=is_xm] run scoreboard players add .world_vote legitermoose.misc 5

# store in the world that you have voted
$execute store result storage legitermoose:worlds worlds[{world_id:$(id)}].votes int 1 run scoreboard players get .world_vote legitermoose.misc

