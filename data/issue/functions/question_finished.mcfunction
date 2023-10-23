#result
scoreboard players add @a[tag=win] Information 1
tellraw @a[tag=win] {"text":"正解","bold":true,"color":"red"}
tellraw @a[tag=lose] {"text":"不正解","bold":true,"color":"blue"}

#SE
execute at @a run playsound minecraft:ui.button.click player @a[tag=lose] ~ ~ ~ 50 0.5
execute at @a run playsound minecraft:ui.button.click player @a[tag=win] ~ ~ ~ 50 1.5

#removeTag
tag @a remove lose
tag @a remove win

#resetInterfaces
scoreboard players remove $questions adjastableValues 1
bossbar set minecraft:qsts name ["",{"text":"残り["},{"score":{"name":"$questions","objective":"adjastableValues"}},{"text":"]問"}]
bossbar set minecraft:times color red
execute store result bossbar minecraft:qsts value run scoreboard players get $questions adjastableValues
scoreboard players set @a showedToSelectAnswer 0
scoreboard players set @a answerTrigger 0

#newQuestion
execute unless score $questions adjastableValues matches 0 run function issue:create_new_question
fill 12 -53 8 4 -53 8 air

#gameOver
execute if score $questions adjastableValues matches 0 run function issue:game_finished