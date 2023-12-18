# am_gamescore1 == problem id
# am_gamescore2 == expected result
# am_gamescore3 == nothing lol
# am_gamescore4 == operation value1
# am_gamescore5 == operation value2
# am_gamescore6 == operation value3
# am_gamescore7 == bald ruler time (by default -1)


scoreboard players add @s[scores={am_gametimer=..9998}] am_gametimer 1

execute if entity @s[scores={am_gametimer=11}] as @r[tag=amplayer] at @s run playsound custom.act3.bald.baldi_math_intro master @a ~ ~ ~ 1000
execute if entity @s[scores={am_gametimer=11}] run tellraw @a [{"text":"<","color":"white"},{"text":"Baldi","color":"green"},{"text":"> "},{"text":"Now it's time for everybody's favorite subject!","color":"green"}]
execute if entity @s[scores={am_gametimer=76}] run tellraw @a [{"text":"<","color":"white"},{"text":"Baldi","color":"green"},{"text":"> "},{"text":"MATH!","color":"green"}]
execute if entity @s[scores={am_gametimer=99}] run tellraw @a [{"text":"<","color":"white"},{"text":"Baldi","color":"green"},{"text":"> "},{"text":"Answer the questions correctly and you might get something special!","color":"green"}]
execute if entity @s[scores={am_gametimer=205}] run tellraw @a [{"text":""},{"text":"Current Task:\n","color":"yellow","bold":true},{"text":"Get Baldi's special reward!","color":"light_purple"},{"text":"\nJumping & Sprinting: ","color":"yellow","italic":true},{"text":"Disabled","color":"red","italic":true}]
execute if entity @s[scores={am_gametimer=205}] as @r[tag=amplayer] at @s run playsound entity.player.levelup master @a ~ ~ ~ 1000

execute if entity @s[scores={am_gametimer=215,am_gamescore1=0}] run function ttt:amogus/minigames/id5/generate_q1
execute if entity @s[scores={am_gametimer=215..,am_gamescore1=2}] run function ttt:amogus/minigames/id5/generate_q2
execute if entity @s[scores={am_gametimer=215..,am_gamescore1=4}] run function ttt:amogus/minigames/id5/generate_q3
execute if entity @s[scores={am_gametimer=215..,am_gamescore1=6}] run function ttt:amogus/minigames/id5/generate_q4
#execute if entity @s[scores={am_gametimer=209,am_gamescore1=6}] as @r[tag=amplayer] at @s run playsound custom.act3.bald.doors_single_open master @a ~ ~ ~ 1000
#execute if entity @s[scores={am_gametimer=219,am_gamescore1=7}] as @r[tag=amplayer] at @s run playsound custom.act3.bald.doors_single_close master @a ~ ~ ~ 1000
execute if entity @s[scores={am_gametimer=210,am_gamescore1=6}] run scoreboard players set @e[type=armor_stand,tag=principal] npcbodytp 1
execute if entity @s[scores={am_gametimer=215..,am_gamescore1=8}] run function ttt:amogus/minigames/id5/generate_q5

#execute if entity @s[scores={am_gametimer=206..215,am_gamescore1=2..8}] as @e[tag=principal] at @s run tp @s ~-0.25 ~ ~

execute if entity @s[scores={am_gametimer=215,am_gamescore1=10}] as @r[tag=amplayer] at @s run playsound custom.act3.bald.baldi_math_stage6 master @a ~ ~ ~ 1000
execute if entity @s[scores={am_gametimer=217,am_gamescore1=10}] run tellraw @a [{"text":"<","color":"white"},{"text":"Baldi","color":"green"},{"text":"> "},{"text":"That's right!","color":"green"}]

execute if entity @s[scores={am_gametimer=224,am_gamescore1=10}] as @e[type=armor_stand,tag=principal] run function ttt:amogus/minigames/id5/tick_principal_p2
#execute if entity @s[scores={am_gametimer=224..235,am_gamescore1=10}] as @e[tag=principal] at @s run tp @s ~ ~ ~0.25
#execute if entity @s[scores={am_gametimer=241..252}] as @e[tag=principal] at @s run tp @s ~ ~ ~-0.25
#execute if entity @s[scores={am_gametimer=253..304}] as @e[tag=principal] at @s run tp @s ~0.25 ~ ~

#execute if entity @s[scores={am_gametimer=230}] run playsound custom.act3.bald.doors_single_open master @a ~ ~ ~ 1000
#execute if entity @s[scores={am_gametimer=230}] run item replace entity @e[tag=doorinteract] weapon.mainhand with gold_ingot{CustomModelData:30} 1
#execute if entity @s[scores={am_gametimer=230}] run fill 21 21 120 21 23 120 air
#execute if entity @s[scores={am_gametimer=250}] run playsound custom.act3.bald.doors_single_close master @a ~ ~ ~ 1000
#execute if entity @s[scores={am_gametimer=250}] run item replace entity @e[tag=doorinteract] weapon.mainhand with gold_ingot{CustomModelData:19} 1
#execute if entity @s[scores={am_gametimer=250}] run fill 21 21 120 21 23 120 barrier

execute if entity @s[scores={am_gametimer=241}] run tellraw @a [{"text":"<","color":"white"},{"text":"Baldi","color":"green"},{"text":"> "},{"text":"You're doing fantastic!","color":"green"}]
execute if entity @s[scores={am_gametimer=270}] as @r[tag=amplayer] at @s run playsound custom.act3.bald.playtime_want_to_play master @a ~ ~ ~ 0.15
execute if entity @s[scores={am_gametimer=305}] run function ttt:amogus/minigames/id5/generate_q6

execute if entity @a[tag=amplayer,scores={x=20..22,z=119}] unless entity @s[scores={am_gametimer=700..}] run scoreboard players set @s am_gametimer 700

execute as @e[type=armor_stand,tag=principal,limit=1] at @s if score @s npcbodytp matches 1.. unless score @s npcbodytp matches 98 run function ttt:amogus/minigames/id5/tick_principal

execute if entity @s[scores={am_gametimer=710}] run stopsound @a master custom.act3.bald.principal_whistle
execute if entity @s[scores={am_gametimer=710}] run stopsound @a master custom.act3.bald.playtime_want_to_play
execute if entity @s[scores={am_gametimer=710}] run function ttt:amogus/minigames/id4/stopsound_baldi
execute if entity @s[scores={am_gametimer=710}] run function ttt:amogus/minigames/id5/task_complete

# 218 -> 217
execute if entity @s[scores={am_gametimer=224}] run function ttt:amogus/minigames/id5/ambience
execute if entity @s[scores={am_gametimer=399}] run scoreboard players set @s am_gametimer 398

execute if entity @s[scores={am_gametimer=390,am_gamescore1=12}] run function ttt:amogus/minigames/id5/generate_q7
## execute if entity @s[scores={am_gametimer=385,am_gamescore1=12}] as @r[tag=amplayer] at @s run playsound custom.act3.bald.principal_whistle master @a ~ ~ ~ 0.75
execute if entity @s[scores={am_gametimer=390,am_gamescore1=14}] run function ttt:amogus/minigames/id5/generate_q8

execute if entity @s[scores={am_gametimer=215..219}] unless entity @a[tag=amplayer,scores={Baldi_Answer=-32787}] run function ttt:amogus/minigames/id5/guess
execute if entity @s[scores={am_gametimer=305..399,am_gamescore1=..13}] unless entity @a[tag=amplayer,scores={Baldi_Answer=-32787}] run function ttt:amogus/minigames/id5/guess_multiple
execute if entity @s[scores={am_gametimer=305..399,am_gamescore1=14..}] unless entity @a[tag=amplayer,scores={Baldi_Answer=-32787}] run function ttt:amogus/minigames/id5/guess_wrong
execute if entity @s[scores={am_gametimer=1000..}] run function ttt:amogus/minigames/id4/tick_angry

execute as @e[tag=baldnpc] at @s run tp @s ~ ~ ~ facing entity @p[tag=amplayer]