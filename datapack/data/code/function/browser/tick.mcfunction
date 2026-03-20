# Prepare the page
# Set Item
execute as @a if items entity @s player.cursor *[custom_data~{navigator.world:1b}] run item replace block -5 55 9 container.0 from entity @s player.cursor
execute as @a if items entity @s player.cursor *[custom_data~{navigator.world:1b}] run data modify storage a item set from block -5 55 9 Items[0].components.minecraft:custom_data
execute as @a if items entity @s player.cursor *[custom_data~{navigator.world:1b}] run function code:browser/_prepare_page with storage a item

execute as @a if items entity @s container.* *[custom_data~{navigator.world:1b}] run tellraw @s {text:"Slow down!",color:red}
execute as @a if items entity @s container.* *[custom_data~{navigator.world:1b}] run scoreboard players set @s timeout 600
execute as @a if items entity @s container.* *[custom_data~{navigator.world:1b}] run inventory @s close

execute as @a if items entity @s weapon.offhand *[custom_data~{navigator.world:1b}] run tellraw @s {text:"Slow down!",color:red}
execute as @a if items entity @s weapon.offhand *[custom_data~{navigator.world:1b}] run scoreboard players set @s timeout 600
execute as @a if items entity @s weapon.offhand *[custom_data~{navigator.world:1b}] run inventory @s close

clear @a *[custom_data~{navigator.world:1b}]
