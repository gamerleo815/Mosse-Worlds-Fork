$execute as @e[type=text_display,tag=vote_count] run data merge entity @s {text:{text:"\"Live\" Vote Count: $(votes)",color:green}}
$execute as @e[type=text_display,tag=visit_count] run data merge entity @s {text:{text:"\"Live\" Visit Count: $(visits)",color:gold}}
