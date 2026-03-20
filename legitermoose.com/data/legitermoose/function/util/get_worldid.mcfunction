# Store x pos in scoreboard (scaled to the next 100)
execute store result score .temp worldid run data get entity @s Pos[0] .01

# Adjust World ID to have an offset of 500 blocks
scoreboard players add .temp worldid 5

# Divide by 100
scoreboard players operation .temp worldid /= 10 numbers

# Adjust World ID again to be valid.
scoreboard players remove .temp worldid 9

# Set own World ID to the temp score
scoreboard players operation @s worldid = .temp worldid