# Days since Jan 1 2026
execute store result score .date time run data get entity @p bukkit.lastPlayed 0.0000000115741
scoreboard players remove .date time 20453

# Months
scoreboard players set .month time 1
scoreboard players set .year time 2026

# January 2026
execute unless score .date time matches 32.. run return run function code:realtime/store_date
execute if score .date time matches 32.. run scoreboard players add .month time 1
execute if score .date time matches 32.. run scoreboard players remove .date time 31

# February 2026
execute unless score .date time matches 29.. run return run function code:realtime/store_date
execute if score .date time matches 29.. run scoreboard players add .month time 1
execute if score .date time matches 29.. run scoreboard players remove .date time 28

# March 2026
execute unless score .date time matches 32.. run return run function code:realtime/store_date
execute if score .date time matches 32.. run scoreboard players add .month time 1
execute if score .date time matches 32.. run scoreboard players remove .date time 31

# April 2026
execute unless score .date time matches 31.. run return run function code:realtime/store_date
execute if score .date time matches 31.. run scoreboard players add .month time 1
execute if score .date time matches 31.. run scoreboard players remove .date time 30

# May 2026
execute unless score .date time matches 32.. run return run function code:realtime/store_date
execute if score .date time matches 32.. run scoreboard players add .month time 1
execute if score .date time matches 32.. run scoreboard players remove .date time 31

# June 2026
execute unless score .date time matches 31.. run return run function code:realtime/store_date
execute if score .date time matches 31.. run scoreboard players add .month time 1
execute if score .date time matches 31.. run scoreboard players remove .date time 30

# July 2026
execute unless score .date time matches 32.. run return run function code:realtime/store_date
execute if score .date time matches 32.. run scoreboard players add .month time 1
execute if score .date time matches 32.. run scoreboard players remove .date time 31

# August 2026
execute unless score .date time matches 32.. run return run function code:realtime/store_date
execute if score .date time matches 32.. run scoreboard players add .month time 1
execute if score .date time matches 32.. run scoreboard players remove .date time 31

# September 2026
execute unless score .date time matches 31.. run return run function code:realtime/store_date
execute if score .date time matches 31.. run scoreboard players add .month time 1
execute if score .date time matches 31.. run scoreboard players remove .date time 30

# October 2026
execute unless score .date time matches 32.. run return run function code:realtime/store_date
execute if score .date time matches 32.. run scoreboard players add .month time 1
execute if score .date time matches 32.. run scoreboard players remove .date time 31

# November 2026
execute unless score .date time matches 31.. run return run function code:realtime/store_date
execute if score .date time matches 31.. run scoreboard players add .month time 1
execute if score .date time matches 31.. run scoreboard players remove .date time 30

# December 2026
execute unless score .date time matches 32.. run return run function code:realtime/store_date
execute if score .date time matches 32.. run scoreboard players add .month time 1
execute if score .date time matches 32.. run scoreboard players remove .date time 31
    