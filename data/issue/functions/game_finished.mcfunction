#Announcement
tellraw @a "<正解数>"
execute as @a run tellraw @a ["",{"selector":"@s","bold":true},{"text":">>","bold":true},{"score":{"name":"@s ","objective":"Information"},"bold":true}]

#hideBossbars
bossbar set minecraft:qsts visible false
bossbar set minecraft:times visible false

#teleport
tp @a 8 -40 6

#setSidebarScoreboard
scoreboard objectives setdisplay sidebar settings

#tagReset
function issue:question_tags_reset