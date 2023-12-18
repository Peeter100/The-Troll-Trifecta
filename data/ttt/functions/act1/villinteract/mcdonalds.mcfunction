scoreboard players add @s[scores={weight=1..98}] weight 1
tag @s remove hungertext
playsound entity.player.burp master @a ~ ~ ~ 1000
playsound entity.player.burp master @a ~ ~ ~ 1000
effect give @s nausea 5 0 true
effect give @s[scores={weight=1..98}] hunger 10 255 true

execute if entity @s[scores={weight=2}] run effect give @s slowness 99999 1 true

execute if entity @s[scores={weight=3}] run effect give @s slowness 99999 3 true
execute if entity @s[scores={weight=3}] run playsound custom.act1.fat master @a ~ ~ ~ 1000
execute if entity @s[scores={weight=3}] run tellraw @a [{"text":"<","color":"white"},{"selector":"@s","color":"aqua"},{"text":"> "},{"text":"I am getting fat and I don't know why!","color":"aqua"}]

execute if entity @s[scores={weight=4}] run effect give @s slowness 99999 5 true
execute if entity @s[scores={weight=4}] run effect give @s jump_boost 99999 200 true
execute if entity @s[scores={weight=4..}] run tag @s add noheal
execute if entity @s[scores={weight=4..98}] run scoreboard players set @e[tag=sv,scores={acttimer=0}] acttimer 260

execute if entity @s[scores={weight=5}] run effect give @s slowness 99999 9 true

scoreboard players set @s mcdonalds 0