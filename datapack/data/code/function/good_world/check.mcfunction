execute store result score .votes misc run data get storage api good_world.response.votes
execute store result score .visits misc run data get storage api good_world.response.visits

setblock -2 65 5 polished_blackstone_button[powered=false,facing=north,face=wall]

# Banned Worlds
    #execute if data storage minecraft:api good_world.response{world_uuid:"<banned uuid>"} run return fail

# Banned Players
    #execute if data storage minecraft:api good_world.response{owner_uuid:"<banned uuid>"} run return fail

execute unless score .visits misc matches 250.. unless score .votes misc matches 25.. run return run http callback code:good_world/get store api good_world send "https://api.legiti.dev/world/random" GET

execute if score .votes misc matches 25.. positioned -2 65 5 run return run function code:good_world/display with storage api good_world.response
execute if score .visits misc matches 250.. positioned -2 65 5 run return run function code:good_world/display with storage api good_world.response


# ----------------------
# suggestion for better filters:
# ----------------------
# world with at least 25 votes
# ---- OR ----
# world with at least 20 votes and 100 visits
# ---- OR ----
# world with at least 15 votes and 80 visits
# ----------------------


