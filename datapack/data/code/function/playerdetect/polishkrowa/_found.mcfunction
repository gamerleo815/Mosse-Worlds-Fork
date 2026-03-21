# If moose is online
tellraw @a[distance=..10] [{text:"PolishKrowa is online.",color:green},"\n",{text:"World: ",color:gold},{storage:a,nbt:"c.response[{players:[\"PolishKrowa\"]}].world",color:green}]

# Modify Entity
execute as @e[type=text_display,tag=polish_status] run data modify entity @s text.extra[1].text set value "ᴏɴʟɪɴᴇ"
execute as @e[type=text_display,tag=polish_status] run data modify entity @s text.extra[1].color set value "green"

# Get World UUID
data modify storage a temp.c.uuid set from storage a c.response[{players:["PolishKrowa"]}].world

function code:playerdetect/polishkrowa/get_world with storage a temp.c