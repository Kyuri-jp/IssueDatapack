#checkSelectedAnswer
fill 12 -53 8 4 -53 8 minecraft:redstone_block

#未回答
execute as @a run execute if score @s answerTrigger matches 0 run tag @s add lose