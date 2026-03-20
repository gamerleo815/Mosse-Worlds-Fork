data modify storage legitiads:ads temp_ad set from block 6 63 9 Items[0].components."minecraft:written_book_content".pages[0].raw

function code:ads/append with storage legitiads:ads

data remove storage legitiads:ads temp_ad

item replace block 6 63 9 container.0 with air
item replace block 6 63 9 container.1 with air
item replace block 6 63 9 container.2 with air
item replace block 6 63 9 container.3 with air
item replace block 6 63 9 container.4 with air