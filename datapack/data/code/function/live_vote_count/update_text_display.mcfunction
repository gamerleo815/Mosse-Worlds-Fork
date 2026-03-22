$execute as @e[type=text_display,tag=vote_count] run data merge entity @s {text:{text:"\"Lɪᴠᴇ\" Vᴏᴛᴇ Cᴏᴜɴᴛ: $(votes)",color:green}}
$execute as @e[type=text_display,tag=visit_count] run data merge entity @s {text:{text:"\"Lɪᴠᴇ\" Vɪꜱɪᴛ Cᴏᴜɴᴛ: $(visits)",color:gold}}
