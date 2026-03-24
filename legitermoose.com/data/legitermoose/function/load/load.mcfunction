scoreboard objectives add legitermoose.gmc_time dummy {text:"GMC Time",color:gray}
scoreboard objectives add legitermoose.misc dummy
scoreboard objectives add legitermoose.temp dummy
scoreboard objectives add legitermoose.tp_cd dummy
scoreboard objectives add worldid dummy
scoreboard objectives add previd dummy
scoreboard objectives add legitermoose.rank dummy

scoreboard objectives add join custom:leave_game
scoreboard objectives add leave custom:leave_game

# UI Logic
scoreboard objectives add page dummy
scoreboard objectives add time_since_open dummy
scoreboard objectives add ui dummy

scoreboard objectives add play trigger
scoreboard objectives add vote trigger
scoreboard objectives add lobby trigger
scoreboard objectives add fly trigger
scoreboard objectives add settings trigger

scoreboard objectives add worldsearch trigger
scoreboard objectives add playersearch trigger

forceload add 990 10
execute if loaded 1000 64 0 run function legitermoose:load/spawn

tellraw @a[tag=is_admin] [{text:"ʟᴇɢɪᴛᴇʀᴍᴏᴏꜱᴇ.ᴄᴏᴍ ʟᴏᴀᴅᴇᴅ!",color:gray}]

#   edit name <gradient:gold:yellow><shadow:#ff00007f>M<shadow:#ff0f007f>o<shadow:#ff1f007f>s<shadow:#ff2e007f>s<shadow:#ff3e007f>e <shadow:#ff5d007f>W<shadow:#ff6c007f>o<shadow:#ff7c007f>r<shadow:#ff8b007f>l<shadow:#ff9b007f>d<yellow><shadow:gold:.5>s