tellraw @s {text:"You are timed out from the world browser.",color:red}
playsound block.note_block.bass block @s ~ ~ ~ 1 0 0.7
data remove entity @n[type=interaction,tag=chest_protection_interaction] interaction