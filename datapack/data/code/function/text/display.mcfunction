$data modify storage text text set value $(text)
execute store result score .len misc run data get storage text text
scoreboard players remove .len misc 1
scoreboard players operation .len2 misc = .len misc

function code:text/loop with storage minecraft:text text