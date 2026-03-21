# Set Up UI
execute positioned ~ ~.5 ~ run function legitermoose:util/ui/fillers

item replace block ~ ~.5 ~ container.0 with redstone_block[custom_data={ui:1b},item_name={text:"Invert Block",color:"#ff8800"},lore=[{text:"Click to convert this to ",italic:0b,color:dark_aqua},{text:"Unless Block",color:dark_aqua,italic:0b}]]

# Open UI
inventory @s block ~ ~.5 ~ <shadow:black:.5><dark_green>ɪꜰ ʙʟᴏᴄᴋ
