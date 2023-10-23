tellraw @a "<正解数>"
execute as @a run tellraw @a ["",{"selector":"@s","bold":true},{"text":">>","bold":true},{"score":{"name":"@s ","objective":"Information"},"bold":true}]
bossbar set minecraft:qsts visible false
bossbar set minecraft:times visible false
tp @a 8 -40 6
scoreboard objectives setdisplay sidebar settings
function issue:question_tags_reset