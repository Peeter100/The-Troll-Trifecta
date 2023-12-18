effect give @s jump_boost 1 200 true
tp @s ~ 41.5 ~
setblock ~ 41 ~ air destroy
playsound custom.act1.toad master @a ~ ~ ~ 1000
tellraw @a [{"text":"<","color":"white"},{"text":"Toad","color":"red"},{"text":"> "},{"text":"Don't step where you don't need to!","color":"red"}]