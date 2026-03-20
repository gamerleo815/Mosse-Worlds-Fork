
# Place If Block
execute as @e[type=interaction,tag=if_block.interaction] at @s on target if score @s legitermoose.rank matches 10 run function legitermoose:coding/blocks/if_block/ui
execute as @e[type=interaction,tag=if_block.interaction] on target unless score @s legitermoose.rank matches 10 run function legitermoose:coding/blocks/if_block/deny

# Remove If Block
execute as @e[type=interaction,tag=if_block.interaction] on attacker if score @s legitermoose.rank matches 10 run function legitermoose:coding/blocks/if_block/remove

# Clear Interaction of If Block
execute as @e[type=interaction,tag=if_block.interaction] run data remove entity @s interaction