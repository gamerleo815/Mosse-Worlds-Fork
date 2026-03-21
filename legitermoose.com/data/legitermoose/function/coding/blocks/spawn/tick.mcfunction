
# if block
execute as @e[type=marker,tag=legitermoose.if_block.spawn] at @s run setblock ~ ~ ~ barrel[facing=up]
execute as @e[type=marker,tag=legitermoose.if_block.spawn] at @s run summon interaction ~ ~-.05 ~ {width:1.1,height:1.1,Tags:["if_block.interaction"]}
kill @e[type=marker,tag=legitermoose.if_block.spawn]

# if block tick
function legitermoose:coding/blocks/if_block/tick