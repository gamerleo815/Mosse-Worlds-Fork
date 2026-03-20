
execute as @e[type=interaction,tag=if_block.interaction] on target if score @s legitermoose.rank matches 10 run say i can use if block
execute as @e[type=interaction,tag=if_block.interaction] on target unless score @s legitermoose.rank matches 10 run say i can NOT use if block

execute as @e[type=interaction,tag=if_block.interaction] on attacker if score @s legitermoose.rank matches 10 run function legitermoose:coding/blocks/if_block/remove


execute as @e[type=interaction,tag=if_block.interaction] run data remove entity @s interaction