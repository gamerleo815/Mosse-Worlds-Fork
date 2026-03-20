# Time

$execute if score .seconds time matches 0..9 if score .minutes time matches 0..9 if score .hours time matches 0..9 as @e[type=text_display,tag=time_utc] run data modify entity @s text set value \
[{text:"Current Time (UTC ",color:gold},{score:{name:".offset",objective:time},color:red},{text:")\n",color:gold},{text:"0$(hours)",color:green},{text:":",color:gray},{text:"0$(minutes)",color:green},{text:":",color:gray},{text:"0$(seconds)",color:green}]

$execute if score .seconds time matches 10..60 if score .minutes time matches 0..9 if score .hours time matches 0..9 as @e[type=text_display,tag=time_utc] run data modify entity @s text set value \
[{text:"Current Time (UTC ",color:gold},{score:{name:".offset",objective:time},color:red},{text:")\n",color:gold},{text:"0$(hours)",color:green},{text:":",color:gray},{text:"0$(minutes)",color:green},{text:":",color:gray},{text:"$(seconds)",color:green}]

$execute if score .seconds time matches 0..9 if score .minutes time matches 10..60 if score .hours time matches 0..9 as @e[type=text_display,tag=time_utc] run data modify entity @s text set value \
[{text:"Current Time (UTC ",color:gold},{score:{name:".offset",objective:time},color:red},{text:")\n",color:gold},{text:"0$(hours)",color:green},{text:":",color:gray},{text:"$(minutes)",color:green},{text:":",color:gray},{text:"0$(seconds)",color:green}]

$execute if score .seconds time matches 0..9 if score .minutes time matches 0..9 if score .hours time matches 10..24 as @e[type=text_display,tag=time_utc] run data modify entity @s text set value \
[{text:"Current Time (UTC ",color:gold},{score:{name:".offset",objective:time},color:red},{text:")\n",color:gold},{text:"$(hours)",color:green},{text:":",color:gray},{text:"0$(minutes)",color:green},{text:":",color:gray},{text:"0$(seconds)",color:green}]

$execute if score .seconds time matches 0..9 if score .minutes time matches 10..60 if score .hours time matches 10..24 as @e[type=text_display,tag=time_utc] run data modify entity @s text set value \
[{text:"Current Time (UTC ",color:gold},{score:{name:".offset",objective:time},color:red},{text:")\n",color:gold},{text:"$(hours)",color:green},{text:":",color:gray},{text:"$(minutes)",color:green},{text:":",color:gray},{text:"0$(seconds)",color:green}]

$execute if score .seconds time matches 10..60 if score .minutes time matches 0..9 if score .hours time matches 10..24 as @e[type=text_display,tag=time_utc] run data modify entity @s text set value \
[{text:"Current Time (UTC ",color:gold},{score:{name:".offset",objective:time},color:red},{text:")\n",color:gold},{text:"$(hours)",color:green},{text:":",color:gray},{text:"0$(minutes)",color:green},{text:":",color:gray},{text:"$(seconds)",color:green}]

$execute if score .seconds time matches 10..60 if score .minutes time matches 10..60 if score .hours time matches 10..24 as @e[type=text_display,tag=time_utc] run data modify entity @s text set value \
[{text:"Current Time (UTC ",color:gold},{score:{name:".offset",objective:time},color:red},{text:")\n",color:gold},{text:"$(hours)",color:green},{text:":",color:gray},{text:"$(minutes)",color:green},{text:":",color:gray},{text:"$(seconds)",color:green}]

$execute if score .seconds time matches 10..60 if score .minutes time matches 10..60 if score .hours time matches 0..9 as @e[type=text_display,tag=time_utc] run data modify entity @s text set value \
[{text:"Current Time (UTC ",color:gold},{score:{name:".offset",objective:time},color:red},{text:")\n",color:gold},{text:"0$(hours)",color:green},{text:":",color:gray},{text:"$(minutes)",color:green},{text:":",color:gray},{text:"$(seconds)",color:green}]


# Date

$execute if score .day time matches 0..9 if score .month time matches 0..9 as @e[type=text_display,tag=date_utc] run data modify entity @s text set value \
[{text:"Current Date (UTC 0)\n",color:light_purple},{text:"0$(day)",color:yellow},{text:".",color:dark_gray},{text:"0$(month)",color:yellow},{text:".",color:dark_gray},{text:"$(year)",color:yellow}]

$execute if score .day time matches 10..31 if score .month time matches 0..9 as @e[type=text_display,tag=date_utc] run data modify entity @s text set value \
[{text:"Current Date (UTC 0)\n",color:light_purple},{text:"$(day)",color:yellow},{text:".",color:dark_gray},{text:"0$(month)",color:yellow},{text:".",color:dark_gray},{text:"$(year)",color:yellow}]

$execute if score .day time matches 0..9 if score .month time matches 10..12 as @e[type=text_display,tag=date_utc] run data modify entity @s text set value \
[{text:"Current Date (UTC 0)\n",color:light_purple},{text:"0$(day)",color:yellow},{text:".",color:dark_gray},{text:"$(month)",color:yellow},{text:".",color:dark_gray},{text:"$(year)",color:yellow}]

$execute if score .day time matches 10..31 if score .month time matches 10..12 as @e[type=text_display,tag=date_utc] run data modify entity @s text set value \
[{text:"Current Date (UTC 0)\n",color:light_purple},{text:"$(day)",color:yellow},{text:".",color:dark_gray},{text:"$(month)",color:yellow},{text:".",color:dark_gray},{text:"$(year)",color:yellow}]


# Actionbar

#$execute if score .seconds time matches 0..9 if score .minutes time matches 0..9 if score @s hour matches 0..9 as @a run title @s[tag=!legitermoose.disable_global_time] actionbar \
[{text:"Time: ",color:gold},{text:"0$(hourself)",color:green},{text:":",color:gray},{text:"0$(minutes)",color:green},{text:":",color:gray},{text:"0$(seconds)",color:green},{text:" (Offset: ",color:gold},{score:{name:"@s",objective:hour},color:red},{text:")",color:gold}]

#$execute if score .seconds time matches 10..60 if score .minutes time matches 0..9 if score @s hour matches 0..9 as @a run title @s[tag=!legitermoose.disable_global_time] actionbar \
[{text:"Time: ",color:gold},{text:"0$(hourself)",color:green},{text:":",color:gray},{text:"0$(minutes)",color:green},{text:":",color:gray},{text:"$(seconds)",color:green},{text:" (Offset: ",color:gold},{score:{name:"@s",objective:offset},color:red},{text:")",color:gold}]

#$execute if score .seconds time matches 0..9 if score .minutes time matches 10..60 if score @s hour matches 0..9 as @a run title @s[tag=!legitermoose.disable_global_time] actionbar \
[{text:"Time: ",color:gold},{text:"0$(hourself)",color:green},{text:":",color:gray},{text:"$(minutes)",color:green},{text:":",color:gray},{text:"0$(seconds)",color:green},{text:" (Offset: ",color:gold},{score:{name:"@s",objective:offset},color:red},{text:")",color:gold}]

#$execute if score .seconds time matches 0..9 if score .minutes time matches 0..9 if score @s hour matches 10..24 as @a run title @s[tag=!legitermoose.disable_global_time] actionbar \
[{text:"Time: ",color:gold},{text:"$(hourself)",color:green},{text:":",color:gray},{text:"0$(minutes)",color:green},{text:":",color:gray},{text:"0$(seconds)",color:green},{text:" (Offset: ",color:gold},{score:{name:"@s",objective:offset},color:red},{text:")",color:gold}]

#$execute if score .seconds time matches 0..9 if score .minutes time matches 10..60 if score @s hour matches 10..24 as @a run title @s[tag=!legitermoose.disable_global_time] actionbar \
[{text:"Time: ",color:gold},{text:"$(hourself)",color:green},{text:":",color:gray},{text:"$(minutes)",color:green},{text:":",color:gray},{text:"0$(seconds)",color:green},{text:" (Offset: ",color:gold},{score:{name:"@s",objective:offset},color:red},{text:")",color:gold}]

#$execute if score .seconds time matches 10..60 if score .minutes time matches 0..9 if score @s hour matches 10..24 as @a run title @s[tag=!legitermoose.disable_global_time] actionbar \
[{text:"Time: ",color:gold},{text:"$(hourself)",color:green},{text:":",color:gray},{text:"0$(minutes)",color:green},{text:":",color:gray},{text:"$(seconds)",color:green},{text:" (Offset: ",color:gold},{score:{name:"@s",objective:offset},color:red},{text:")",color:gold}]

#$execute if score .seconds time matches 10..60 if score .minutes time matches 10..60 if score @s hour matches 10..24 as @a run title @s[tag=!legitermoose.disable_global_time] actionbar \
[{text:"Time: ",color:gold},{text:"$(hourself)",color:green},{text:":",color:gray},{text:"$(minutes)",color:green},{text:":",color:gray},{text:"$(seconds)",color:green},{text:" (Offset: ",color:gold},{score:{name:"@s",objective:offset},color:red},{text:")",color:gold}]

#$execute if score .seconds time matches 10..60 if score .minutes time matches 10..60 if score @s hour matches 0..9 as @a run title @s[tag=!legitermoose.disable_global_time] actionbar \
[{text:"Time: ",color:gold},{text:"0$(hourself)",color:green},{text:":",color:gray},{text:"$(minutes)",color:green},{text:":",color:gray},{text:"$(seconds)",color:green},{text:" (Offset: ",color:gold},{score:{name:"@s",objective:offset},color:red},{text:")",color:gold}]







$execute if score .seconds time matches 0..9 if score .minutes time matches 0..9 if score @s hour matches 0..9 run title @s[tag=!legitermoose.disable_global_time] actionbar \
[{text:"Time: ",color:gold},{text:"0",color:green},{score:{name:"@s",objective:hour},color:green},{text:":",color:gray},{text:"0$(minutes)",color:green},{text:":",color:gray},{text:"0$(seconds)",color:green},{text:" (Offset: ",color:gold},{score:{name:"@s",objective:offset},color:red},{text:")",color:gold}]

$execute if score .seconds time matches 10..60 if score .minutes time matches 0..9 if score @s hour matches 0..9 run title @s[tag=!legitermoose.disable_global_time] actionbar \
[{text:"Time: ",color:gold},{text:"0",color:green},{score:{name:"@s",objective:hour},color:green},{text:":",color:gray},{text:"0$(minutes)",color:green},{text:":",color:gray},{text:"$(seconds)",color:green},{text:" (Offset: ",color:gold},{score:{name:"@s",objective:offset},color:red},{text:")",color:gold}]

$execute if score .seconds time matches 0..9 if score .minutes time matches 10..60 if score @s hour matches 0..9 run title @s[tag=!legitermoose.disable_global_time] actionbar \
[{text:"Time: ",color:gold},{text:"0",color:green},{score:{name:"@s",objective:hour},color:green},{text:":",color:gray},{text:"$(minutes)",color:green},{text:":",color:gray},{text:"0$(seconds)",color:green},{text:" (Offset: ",color:gold},{score:{name:"@s",objective:offset},color:red},{text:")",color:gold}]

$execute if score .seconds time matches 0..9 if score .minutes time matches 0..9 if score @s hour matches 10..24 run title @s[tag=!legitermoose.disable_global_time] actionbar \
[{text:"Time: ",color:gold},{score:{name:"@s",objective:hour},color:green},{text:":",color:gray},{text:"0$(minutes)",color:green},{text:":",color:gray},{text:"0$(seconds)",color:green},{text:" (Offset: ",color:gold},{score:{name:"@s",objective:offset},color:red},{text:")",color:gold}]

$execute if score .seconds time matches 0..9 if score .minutes time matches 10..60 if score @s hour matches 10..24 run title @s[tag=!legitermoose.disable_global_time] actionbar \
[{text:"Time: ",color:gold},{score:{name:"@s",objective:hour},color:green},{text:":",color:gray},{text:"$(minutes)",color:green},{text:":",color:gray},{text:"0$(seconds)",color:green},{text:" (Offset: ",color:gold},{score:{name:"@s",objective:offset},color:red},{text:")",color:gold}]

$execute if score .seconds time matches 10..60 if score .minutes time matches 0..9 if score @s hour matches 10..24 run title @s[tag=!legitermoose.disable_global_time] actionbar \
[{text:"Time: ",color:gold},{score:{name:"@s",objective:hour},color:green},{text:":",color:gray},{text:"0$(minutes)",color:green},{text:":",color:gray},{text:"$(seconds)",color:green},{text:" (Offset: ",color:gold},{score:{name:"@s",objective:offset},color:red},{text:")",color:gold}]

$execute if score .seconds time matches 10..60 if score .minutes time matches 10..60 if score @s hour matches 10..24 run title @s[tag=!legitermoose.disable_global_time] actionbar \
[{text:"Time: ",color:gold},{score:{name:"@s",objective:hour},color:green},{text:":",color:gray},{text:"$(minutes)",color:green},{text:":",color:gray},{text:"$(seconds)",color:green},{text:" (Offset: ",color:gold},{score:{name:"@s",objective:offset},color:red},{text:")",color:gold}]

$execute if score .seconds time matches 10..60 if score .minutes time matches 10..60 if score @s hour matches 0..9 run title @s[tag=!legitermoose.disable_global_time] actionbar \
[{text:"Time: ",color:gold},{text:"0",color:green},{score:{name:"@s",objective:hour},color:green},{text:":",color:gray},{text:"$(minutes)",color:green},{text:":",color:gray},{text:"$(seconds)",color:green},{text:" (Offset: ",color:gold},{score:{name:"@s",objective:offset},color:red},{text:")",color:gold}]
