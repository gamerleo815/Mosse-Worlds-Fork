execute unless entity @s[tag=is_dev] run return run tellraw @s {text:"Only Devs and higher can run this function.",color:gray}

tellraw @a[tag=is_admin] {text:"Bᴀᴄᴋɪɴɢ ᴜᴘ Wᴏʀʟᴅꜱ.",color:yellow}

# only allow for 10 backups
execute if data storage legitermoose:worlds backups[10] run return run tellraw @s {text:"Tʜᴇʀᴇ ɪꜱ ɴᴏᴛ ᴇɴᴏᴜɢʜ ʙᴀᴄᴋᴜᴘ ꜱᴘᴀᴄᴇ. ᴏʟᴅ ʙᴀᴄᴋᴜᴘꜱ ᴡɪʟʟ ʙᴇ ᴅᴇʟᴇᴛᴇᴅ.",color:dark_red}

    # execute if data storage legitermoose:worlds backups[10] run data remove storage legitermoose:backups backups[10]

scoreboard players set .global_id legitermoose.misc 0
data modify storage legitermoose:backups backups prepend from storage legitermoose:worlds worlds

# Back up ranks too
data modify storage legitermoose:backups backups[0].ranks set from storage legitermoose:ranks worlds

tellraw @a[tag=is_admin] {text:"Dᴇʟᴇᴛɪɴɢ Wᴏʀʟᴅꜱ.",color:red}

data remove storage legitermoose:worlds worlds
data remove storage legitermoose:ranks worlds

tellraw @a[tag=is_admin] {text:"Wᴏʀʟᴅꜱ ᴅᴇʟᴇᴛᴇᴅ!",color:green}