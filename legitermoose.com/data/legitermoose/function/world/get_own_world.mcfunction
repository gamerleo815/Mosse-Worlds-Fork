# Check if you own worlds
    # $execute unless data storage legitermoose:worlds {worlds:[{uuid:$(UUID)}]} at @s run playsound block.note_block.bass ui @s ~ ~ ~ 1 .5 
    # $execute unless data storage legitermoose:worlds {worlds:[{uuid:$(UUID)}]} run tellraw @s {text:"You don't own any worlds!",color:red}
    # $execute unless data storage legitermoose:worlds {worlds:[{uuid:$(UUID)}]} run return run tellraw @s {text:"Create a world to play!",color:yellow}


# clear data
data remove block 992 56 7 Items

# I LOVE /data I LOVE IT SO MUCH ITS THE BEST COMMAND EVER IT ALWAYS WORKS 
data remove storage legitermoose:temp item
data merge storage legitermoose:temp {item:{Slot:13b,id:"minecraft:player_head",count:1, components:{item_name:[{text:"Player",color:white},{text:"'s world",color:white}],profile:"Player",lore:[{text:"This is the default description",color:gray,italic:0b},{text:"for worlds on legitermoose.com",color:gray,italic:0b},"",[{text:"0",color:green,italic:0b},{text:"/",color:green,italic:0b},{text:"8",color:green,italic:0b},{text:" playing",color:gray,italic:0b}],[{text:"0",color:green,italic:0b},{text:" votes, ",color:gray,italic:0b},{text:"0",color:green,italic:0b},{text:" visits",color:gray,italic:0b}]],tooltip_display:{hidden_components:["minecraft:profile"]},custom_data:{ui:1b,world:1b,legitermoose.data:{plot_position:{x:10000,y:64,z:0},world_id:0}}}}}

# ensure right order
$data modify storage legitermoose:temp item.components.profile set from storage legitermoose:worlds worlds[{uuid:$(UUID)}].owner
$data modify storage legitermoose:temp item.components.custom_name set from storage legitermoose:worlds worlds[{uuid:$(UUID)}].name
# handle description
$data modify storage legitermoose:temp item.components.lore set from storage legitermoose:worlds worlds[{uuid:$(UUID)}].description
data modify storage legitermoose:temp item.components.lore append value ""
data modify storage legitermoose:temp item.components.lore append value [{text:"0",color:green,italic:0b},{text:"/",color:green,italic:0b},{text:"8",color:green,italic:0b},{text:" playing",color:gray,italic:0b}]
data modify storage legitermoose:temp item.components.lore append value [{text:"0",color:green,italic:0b},{text:" votes, ",color:gray,italic:0b},{text:"0",color:green,italic:0b},{text:" visits",color:gray,italic:0b}]
data modify storage legitermoose:temp item.components.lore append value [{text:"by ",color:gray,italic:0b},{text:"Player",color:gray,italic:0b}]
$data modify storage legitermoose:temp item.components.lore[5][1] set from storage legitermoose:worlds worlds[{uuid:$(UUID)}].owner

# Set Custom Data for World Loading
$data modify storage legitermoose:temp item.components.custom_data."legitermoose.data".plot_position.x set from storage legitermoose:worlds worlds[{uuid:$(UUID)}].custom_data."legitermoose.data".plot_position.x
$data modify storage legitermoose:temp item.components.custom_data."legitermoose.data".world_id set from storage legitermoose:worlds worlds[{uuid:$(UUID)}].world_id

# set votes
$data modify storage legitermoose:temp item.components.lore[4][0].text set string storage legitermoose:worlds worlds[{uuid:$(UUID)}].votes

# set visits
$data modify storage legitermoose:temp item.components.lore[4][2].text set string storage legitermoose:worlds worlds[{uuid:$(UUID)}].visits


data modify block 992 56 7 Items append from storage legitermoose:temp item
clone 992 56 7 992 56 7 992 54 7

inventory @s block 992 54 7 Your Worlds