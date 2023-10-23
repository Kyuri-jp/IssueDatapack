tag @e[type=armor_stand,tag=Selected] add Select
execute at @e[type=armor_stand,tag=Selected] run setblock ~ ~ ~ air
tag @e[type=armor_stand,tag=Selected] remove Selected