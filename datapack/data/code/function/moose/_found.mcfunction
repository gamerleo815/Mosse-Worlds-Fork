# If moose is online
tellraw @a[distance=..8] [{text:"Legitermoose is online.",color:green},"\n",{text:"World: ",color:gold},{storage:a,nbt:"b.response[{players:[\"Legitermoose\"]}].world",color:green}]

# Modify Entity
execute as @e[type=text_display,tag=moss_status] run data modify entity @s text.extra[1].text set value "ᴏɴʟɪɴᴇ"
execute as @e[type=text_display,tag=moss_status] run data modify entity @s text.extra[1].color set value "green"

# Get World UUID
data modify storage a temp.b.uuid set from storage a b.response[{players:["Legitermoose"]}].world

function code:moose/get_world with storage a temp.b