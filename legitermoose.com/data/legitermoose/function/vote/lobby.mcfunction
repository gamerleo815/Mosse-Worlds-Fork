# Vote the lobby
tag @s add legitermoose.has_voted_lobby

execute at @s run playsound entity.player.levelup master @s ~ ~ ~ 1 2

execute if entity @s[tag=!is_am] run function legitermoose:vote/non_vote
execute if entity @s[tag=is_am,tag=!is_fm] run function legitermoose:vote/am_vote
execute if entity @s[tag=is_fm,tag=!is_fm2] run function legitermoose:vote/fm_vote
execute if entity @s[tag=is_fm2,tag=!is_xm] run function legitermoose:vote/fm2_vote
execute if entity @s[tag=is_xm] run function legitermoose:vote/xm_vote