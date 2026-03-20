
function legitermoose:util/get_name

execute if entity @s[tag=!is_am] run tellraw @a[tag=legitermoose.is_playing] [{text:"[",color:gray},{text:"+",color:dark_green},{text:"] ",color:gray},{storage:"legitermoose:temp",nbt:playername}]
execute if entity @s[tag=!is_am] run tellraw @a[tag=!legitermoose.is_playing] [{text:"[",color:gray,hover_event:{action:show_text,value:[{storage:"legitermoose:temp",nbt:playername},{text:" has mysteriously disappeared.",color:white}]}},{text:"→",color:aqua},{text:"] ",color:gray},{storage:"legitermoose:temp",nbt:playername}]

execute if entity @s[tag=is_am,tag=!is_fm] run tellraw @a[tag=legitermoose.is_playing] [{text:"[",color:gray},{text:"+",color:dark_green},{text:"] ",color:gray},{text:"ᴀᴍ ",color:"#98fdb5"},{text:"| ",color:dark_gray},{storage:"legitermoose:temp",nbt:playername,color:"#9aeeb2"}]
execute if entity @s[tag=is_am,tag=!is_fm] run tellraw @a[tag=!legitermoose.is_playing] [{text:"[",color:gray,hover_event:{action:show_text,value:[{storage:"legitermoose:temp",nbt:playername},{text:" has mysteriously disappeared.",color:white}]}},{text:"→",color:aqua},{text:"] ",color:gray},{text:"ᴀᴍ ",color:"#98fdb5"},{text:"| ",color:dark_gray},{storage:"legitermoose:temp",nbt:playername,color:"#9aeeb2"}]

execute if entity @s[tag=is_fm,tag=!is_fm2] run tellraw @a[tag=legitermoose.is_playing] [{text:"[",color:gray},{text:"+",color:dark_green},{text:"] ",color:gray},{text:"ꜰᴍ ",color:"#8888ff"},{text:"| ",color:dark_gray},{storage:"legitermoose:temp",nbt:playername,color:"#6ec4ff"}]
execute if entity @s[tag=is_fm,tag=!is_fm2] run tellraw @a[tag=!legitermoose.is_playing] [{text:"[",color:gray,hover_event:{action:show_text,value:[{storage:"legitermoose:temp",nbt:playername},{text:" has mysteriously disappeared.",color:white}]}},{text:"→",color:aqua},{text:"] ",color:gray},{text:"ꜰᴍ ",color:"#8888ff"},{text:"| ",color:dark_gray},{storage:"legitermoose:temp",nbt:playername,color:"#6ec4ff"}]

execute if entity @s[tag=is_fm2,tag=!is_xm] run tellraw @a[tag=legitermoose.is_playing] [{text:"[",color:gray},{text:"+",color:dark_green},{text:"] ",color:gray},{text:"ꜰᴍ",color:"#8888ff"},{text:"² ",color:"#ba094a"},{text:"| ",color:dark_gray},{storage:"legitermoose:temp",nbt:playername,color:"#6ec4ff"}]
execute if entity @s[tag=is_fm2,tag=!is_xm] run tellraw @a[tag=!legitermoose.is_playing] [{text:"[",color:gray,hover_event:{action:show_text,value:[{storage:"legitermoose:temp",nbt:playername},{text:" has mysteriously disappeared.",color:white}]}},{text:"→",color:aqua},{text:"] ",color:gray},{text:"ꜰᴍ",color:"#8888ff"},{text:"² ",color:"#ba094a"},{text:"| ",color:dark_gray},{storage:"legitermoose:temp",nbt:playername,color:"#6ec4ff"}]

execute if entity @s[tag=is_xm] run tellraw @a[tag=legitermoose.is_playing] [{text:"[",color:gray},{text:"+",color:dark_green},{text:"] ",color:gray},{text:"xᴍ ",color:"#ff33ff"},{text:"| ",color:dark_gray},{storage:"legitermoose:temp",nbt:playername,color:"#d662ff"}]
execute if entity @s[tag=is_xm] run tellraw @a[tag=!legitermoose.is_playing] [{text:"[",color:gray,hover_event:{action:show_text,value:[{storage:"legitermoose:temp",nbt:playername},{text:" has mysteriously disappeared.",color:white}]}},{text:"→",color:aqua},{text:"] ",color:gray},{text:"xᴍ ",color:"#ff33ff"},{text:"| ",color:dark_gray},{storage:"legitermoose:temp",nbt:playername,color:"#d662ff"}]
