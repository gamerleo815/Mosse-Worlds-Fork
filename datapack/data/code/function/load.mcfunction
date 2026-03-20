
gamerule doMobSpawning false
gamerule mobGriefing false
gamerule doFireTick false
gamerule doImmediateRespawn true
gamerule locatorBar false
gamerule randomTickSpeed 100
gamerule fallDamage false
gamerule announceAdvancements false
gamerule tntExplodes false
gamerule keepInventory true

time set 23582

scoreboard objectives add id dummy
scoreboard objectives add misc dummy
scoreboard objectives add toggle_info trigger

scoreboard objectives add hour dummy
scoreboard objectives add hour2 dummy

scoreboard objectives add offset trigger
scoreboard objectives add time dummy

scoreboard objectives add numbers dummy
scoreboard players set -24 numbers -24
scoreboard players set 20 numbers 20
scoreboard players set 24 numbers 24
scoreboard players set 60 numbers 60
scoreboard players set 3600 numbers 3600
scoreboard players set 10000 numbers 10000
scoreboard players set 86400 numbers 86400



scoreboard objectives add timeout dummy

scoreboard objectives add requests dummy


setworldspawn 0 64 0

team add player
team modify player friendlyFire false
team modify player collisionRule never

team add tester
team modify tester friendlyFire false
team modify tester collisionRule never

tellraw @a { "color": "gold", "text": "The Mosse is World"}

execute unless loaded 9 64 -19 run return fail

kill @e[tag=time]
summon text_display 13.90 69.0 0.5 {text:[{text:"Current Time (UTC ",color:gold},{score:{name:".offset",objective:time},color:red},{text:")\n",color:gold},{text:"hh",color:green},{text:":",color:dark_gray},{text:"mm",color:green},{text:":",color:dark_gray},{text:"ss",color:green}],Tags:["time_utc","time"],Rotation:[90,0],transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [2.0f, 2.0f, 2.0f], translation: [0.0f, 0.0f, 0.0f]}}
summon text_display 13.90 68.1 0.5 {text:[{text:"Current Date (UTC 0)\n",color:light_purple},{text:"dd",color:yellow},{text:".",color:dark_gray},{text:"mm",color:yellow},{text:".",color:dark_gray},{text:"yyyy",color:yellow}],Tags:["date_utc","time"],Rotation:[90,0],transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.5f, 1.5f, 1.5f], translation: [0.0f, 0.0f, 0.0f]}}

kill @e[tag=moss]
summon text_display 10.9 66.9 -14.5 {text:[{player:Legitermoose},{text:" Legitermoose Status: ",color:light_purple},{text:"ᴜɴᴋɴᴏᴡɴ",color:yellow}],Tags:["moss","moss_status"],Rotation:[90,0],transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.6f, 1.6f, 1.6f], translation: [0.0f, 0.0f, 0.0f]}}
summon text_display 10.9 66.5 -14.5 {text:{text:"Check to see if Legitermoose is online.",color:gray},Tags:["moss"],Rotation:[90,0],transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], translation: [0.0f, 0.0f, 0.0f]}}
summon text_display 10.9 66.1 -14.5 {text:[{text:"World will display ",color:gray},[{text:"here",color:dark_gray}],{text:".",color:gray}],Tags:["moss","moss_world"],Rotation:[90,0],transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], translation: [0.0f, 0.0f, 0.0f]},line_width:500}

kill @e[tag=polish]
summon text_display 10.9 66.9 -22.5 {text:[{player:PolishKrowa},{text:" PolishKrowa Status: ",color:light_purple},{text:"ᴜɴᴋɴᴏᴡɴ",color:yellow}],Tags:["polish","polish_status"],Rotation:[90,0],transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.6f, 1.6f, 1.6f], translation: [0.0f, 0.0f, 0.0f]}}
summon text_display 10.9 66.5 -22.5 {text:{text:"Check to see if PolishKrowa is online.",color:gray},Tags:["polish"],Rotation:[90,0],transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], translation: [0.0f, 0.0f, 0.0f]}}
summon text_display 10.9 66.1 -22.5 {text:[{text:"World will display ",color:gray},[{text:"here",color:dark_gray}],{text:".",color:gray}],Tags:["polish","polish_world"],Rotation:[90,0],transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], translation: [0.0f, 0.0f, 0.0f]},line_width:500}

kill @e[tag=discord_join]
summon interaction 5.5 64.5 10.5 {width:2,height:2,Tags:["discord_join"]}
summon text_display 5.5 66.2 9.9 {text:{text:"Click to join the Discord!",color:blue},Tags:["discord_join"],Rotation:[180,0],transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.9f, 0.9f, 0.9f], translation: [0.0f, 0.0f, 0.0f]}}


execute positioned 10 63 -12 run function code:moose/init

scoreboard players set .globaltimer misc 0


kill @e[type=interaction,tag=chest_protection_interaction]
summon interaction -6 63.5 8 {Tags:["show_for_timed_out_users","chest_protection_interaction"],width:3,height:2}