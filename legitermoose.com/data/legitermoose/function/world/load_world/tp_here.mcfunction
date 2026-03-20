# TODO: attempt spawning entity that pre loads your world, then kill it once you go there
# That won't work anyway so.
tp @s ~ ~ ~

# commenting out a bad attempt at loading the chunk
    #fill ~-1 ~-2 ~-1 ~1 ~-2 ~1 bedrock
setblock ~ ~-2 ~ test_block[mode=start]

# Increase amount of attempt ticks by 1, until 3 seconds
scoreboard players add @s legitermoose.tp_cd 1

# Remove flying 
data merge entity @s[tag=!is_admin] {abilities:{mayfly:0b,flying:0b}}

# if loaded, do the fun stuff
execute if loaded ~ ~ ~ run inventory @s close
execute if loaded ~ ~ ~ run tellraw @s {text:"World loaded!",color:green}
execute if loaded ~ ~ ~ run return run scoreboard players set @s legitermoose.tp_cd 100