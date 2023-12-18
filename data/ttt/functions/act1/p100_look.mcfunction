execute as @e[tag=p100b-head] at @s run tp @s ~ ~ ~ facing entity @p[tag=blockcause]
execute as @e[tag=p100b-vis] at @s run scoreboard players add @s npcbodytp 1
execute as @e[tag=p100b-vis,scores={npcbodytp=10..}] at @s run tp @s @e[tag=p100b-head,limit=1]
execute as @e[tag=p100b-vis,scores={npcbodytp=10..}] at @s run scoreboard players set @s npcbodytp 0

execute if entity @s[scores={acttimer=301}] run playsound custom.act1.va.fnf_intro master @a 0 30.5 158 1000
execute if entity @s[scores={acttimer=301}] run tellraw @a [{"text":"<","color":"white"},{"text":"Peeter100","color":"gold"},{"text":"> "},{"text":"You're not cool enough to- uh...","color":"gold"}]
execute if entity @s[scores={acttimer=315}] run item replace entity @e[tag=p100b-vis] weapon.mainhand with emerald{CustomModelData:8}
execute if entity @s[scores={acttimer=315}] run item replace entity @e[tag=p100b-vis] weapon.offhand with air
execute if entity @s[scores={acttimer=356}] run tellraw @a [{"text":"<","color":"white"},{"text":"Peeter100","color":"gold"},{"text":"> "},{"text":"-get close to this gate.","color":"gold"}]
execute if entity @s[scores={acttimer=394}] run tellraw @a [{"text":"<","color":"white"},{"text":"Peeter100","color":"gold"},{"text":"> "},{"text":"You can become cool if you beat me in a rap battle.","color":"gold"}]
execute if entity @s[scores={acttimer=451}] run tellraw @a [{"text":"<","color":"white"},{"text":"Peeter100","color":"gold"},{"text":"> "},{"text":"What?","color":"gold"}]
execute if entity @s[scores={acttimer=459}] run tellraw @a [{"text":"<","color":"white"},{"text":"Peeter100","color":"gold"},{"text":"> "},{"text":"No!","color":"gold"}]
execute if entity @s[scores={acttimer=473}] run tellraw @a [{"text":"<","color":"white"},{"text":"Peeter100","color":"gold"},{"text":"> "},{"text":"Friday Night Funkin' is NOT a dead game.","color":"gold"}]
execute if entity @s[scores={acttimer=529}] run tellraw @a [{"text":"<","color":"white"},{"text":"Peeter100","color":"gold"},{"text":"> "},{"text":"(Wait, it's 2 years old now?)","color":"gold"}]
execute if entity @s[scores={acttimer=561}] run playsound custom.act1.undertale master @a 0 30.5 158 1000