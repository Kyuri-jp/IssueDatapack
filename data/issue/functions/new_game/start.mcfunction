#resetQuestionRoom
fill 12 -48 9 4 -48 9 air

#resetScores
scoreboard players reset @a Information
scoreboard players set @a showedToSelectAnswer 0
scoreboard players set @a answerTrigger 0

#setScores
scoreboard players operation $time adjastableValues = $time settings
scoreboard players operation $questions adjastableValues = $questions settings
execute store result bossbar minecraft:qsts max run scoreboard players get $questions settings
execute store result bossbar minecraft:qsts value run scoreboard players get $questions settings
execute store result bossbar minecraft:times max run scoreboard players get $time settings

#setDisplay
scoreboard objectives setdisplay sidebar Information

#bossBar
bossbar set minecraft:qsts name ["",{"text":"残り["},{"score":{"name":"$questions","objective":"settings"}},{"text":"]問"}]
bossbar set minecraft:times color red
bossbar set minecraft:qsts players @a
bossbar set minecraft:qsts visible true
bossbar set minecraft:times players @a
bossbar set minecraft:times visible true

#teleport
tp @a 8 -50 4

#tellraw
tellraw @a [{"text":"制限時間:"},{"score":{"name":"$time","objective":"settings"}}]
tellraw @a [{"score":{"name":"$questions","objective":"settings"}},{"text":"問"}]

#let's!
function issue:create_new_question