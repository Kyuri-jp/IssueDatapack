#pistonON
setblock 2 -56 4 minecraft:redstone_block

#randomSelect
tag @e[type=minecraft:armor_stand,tag=Select,sort=random,limit=1] add Selected
tag @e[type=minecraft:armor_stand,tag=Selected] remove Select
execute at @e[type=minecraft:armor_stand,tag=Selected] run setblock ~ ~ ~ minecraft:redstone_block

#pistonOFF
setblock 2 -56 4 air