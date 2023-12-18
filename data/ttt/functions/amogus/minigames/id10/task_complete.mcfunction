function ttt:amogus/minigames/task_complete
execute unless data storage amogtaskdata {taskData:{id10:{completed:1b}}} run scoreboard players add @s am_lvl_unique 1
execute unless data storage amogtaskdata {taskData:{id10:{completed:1b}}} run tellraw @a [{"text":"You've now completed ","color":"green"},{"score":{"name":"@s","objective":"am_lvl_unique"},"color":"yellow"},{"text":"/"},{"text":"12","color":"yellow"},{"text":" unique tasks!"}]
data merge storage amogtaskdata {taskData:{id10:{completed:1b}}}
advancement grant @a only ttt:task id10
function ttt:amogus/levelling/allow_levelup_test