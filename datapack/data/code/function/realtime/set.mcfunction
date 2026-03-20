# only run once every 10 ticks
    #scoreboard players add .cooldown time 1
    #execute unless score .cooldown time matches 10.. run return fail
    #execute if score .cooldown time matches 10.. run scoreboard players set .cooldown time 0

# Get Time
execute store result score .time time run data get entity @p bukkit.lastPlayed .001

# Get seconds from Midnight
scoreboard players operation .seconds_midnight time = .time time
scoreboard players operation .seconds_midnight time %= 86400 numbers

# Get seconds
scoreboard players operation .seconds time = .seconds_midnight time
scoreboard players operation .seconds time %= 60 numbers

# Get minutes
scoreboard players operation .minutes time = .seconds_midnight time
scoreboard players operation .minutes time /= 60 numbers
scoreboard players operation .minutes time %= 60 numbers

# Get hours
scoreboard players operation .hours time = .seconds_midnight time
scoreboard players operation .hours time /= 3600 numbers

# Get UTC Hour
scoreboard players operation .hour_utc time = .seconds_midnight time
scoreboard players operation .hour_utc time /= 3600 numbers

# add hour offset
scoreboard players operation .hours time += .offset time
scoreboard players operation .hours time %= 24 numbers

# Set per player Hour
scoreboard players operation @s hour = .hour_utc time
scoreboard players operation @s hour += @s hour2
scoreboard players operation @s hour %= 24 numbers


execute store result storage time hours int 1 run scoreboard players get .hours time
execute store result storage time minutes int 1 run scoreboard players get .minutes time
execute store result storage time seconds int 1 run scoreboard players get .seconds time

execute store result storage time hourself int 1 run scoreboard players get @s hour

function code:realtime/date

function code:realtime/update with storage time