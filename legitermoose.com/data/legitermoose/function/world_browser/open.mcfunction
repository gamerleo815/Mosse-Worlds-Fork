advancement revoke @s only legitermoose:world_browser

execute unless entity @s[scores={worldid=-8}] run return 0

execute unless score @s time_since_open matches 10.. run return run scoreboard players set @s time_since_open 0
scoreboard players set @s time_since_open 0

scoreboard players set @s ui 1
scoreboard players set @s page 0

function legitermoose:ui/render_ui

inventory @s enderchest @s <reset>           Wᴏʀʟᴅ Bʀᴏᴡꜱᴇʀ