scoreboard players operation $tmp page = $offset page
$scoreboard players add $tmp page $(offset)
data remove storage legitermoose:world_browser browser
$data modify storage legitermoose:world_browser browser.offset set value $(offset)
execute store result storage legitermoose:world_browser browser.world_offset int 1 run scoreboard players get $tmp page
function legitermoose:world_browser/render/get_item with storage legitermoose:world_browser browser
execute unless data storage legitermoose:world_browser browser.owner run return 0
function legitermoose:world_browser/render/format_owner with storage legitermoose:world_browser browser
function legitermoose:world_browser/render/_render_item with storage legitermoose:world_browser browser