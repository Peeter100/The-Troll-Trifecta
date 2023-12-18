execute if entity @s[scores={am_gamescore2=1..300}] run function ttt:amogus/minigames/id6/service_countdown

execute if entity @s[scores={am_gamescore2=550}] run tellraw @a [{"text":"<","color":"white"},{"text":"Big Smoke","color":"#004406"},{"text":"> "},{"text":"A Number 9 Large...","color":"#004406"}]
execute if entity @s[scores={am_gamescore2=507}] run tellraw @a [{"text":"<","color":"white"},{"text":"Big Smoke","color":"#004406"},{"text":"> "},{"text":"A Number 6 with Extra Dip...","color":"#004406"}]
execute if entity @s[scores={am_gamescore2=449}] run tellraw @a [{"text":"<","color":"white"},{"text":"Big Smoke","color":"#004406"},{"text":"> "},{"text":"A Number 7...","color":"#004406"}]
execute if entity @s[scores={am_gamescore2=411}] run tellraw @a [{"text":"<","color":"white"},{"text":"Big Smoke","color":"#004406"},{"text":"> "},{"text":"Two Number 45s...","color":"#004406"}]
execute if entity @s[scores={am_gamescore2=368}] run tellraw @a [{"text":"<","color":"white"},{"text":"Big Smoke","color":"#004406"},{"text":"> "},{"text":"...one with cheese!","color":"#004406"}]
execute if entity @s[scores={am_gamescore2=336}] run tellraw @a [{"text":"<","color":"white"},{"text":"Big Smoke","color":"#004406"},{"text":"> "},{"text":"...and a Large Soda!","color":"#004406"}]

# item1 --> number 9 x2
# item2 --> number 9 large
# item3 --> number 6 dip
# item4 --> number 7
# item5 --> number 45
# item6 --> number 45 cheese
# item7 --> soda

execute if entity @s[scores={am_gamescore2=1..600}] at @e[tag=smoke,limit=1] positioned ~ ~0.25 ~ if entity @e[type=item,distance=0..1,nbt=!{Item:{tag:{smokecollection:1b}}}] run function ttt:amogus/minigames/id6/service_fail
execute if entity @s[scores={am_gamescore2=0}] run function ttt:amogus/minigames/id6/service_fail

execute if entity @s[scores={am_gamescore2=1..600}] at @e[tag=smoke,limit=1] positioned ~ ~0.25 ~ if entity @e[type=item,distance=0..1,nbt={Item:{tag:{smokeitem1:1b}}},tag=!accounted] if entity @e[tag=accounted] run tag @e[tag=smoke] add item1
execute if entity @s[scores={am_gamescore2=1..600}] at @e[tag=smoke,limit=1] positioned ~ ~0.25 ~ run tag @e[type=item,distance=0..1,nbt={Item:{tag:{smokeitem1:1b}}}] add accounted
execute if entity @s[scores={am_gamescore2=1..600}] at @e[tag=smoke,limit=1] positioned ~ ~0.25 ~ if entity @e[type=item,distance=0..1,nbt={Item:{Count:2b,tag:{smokeitem1:1b}}}] run tag @e[tag=smoke] add item1
execute if entity @s[scores={am_gamescore2=1..600}] at @e[tag=smoke,limit=1] positioned ~ ~0.25 ~ if entity @e[type=item,distance=0..1,nbt={Item:{tag:{smokeitem2:1b}}}] run tag @e[tag=smoke] add item2
execute if entity @s[scores={am_gamescore2=1..600}] at @e[tag=smoke,limit=1] positioned ~ ~0.25 ~ if entity @e[type=item,distance=0..1,nbt={Item:{tag:{smokeitem3:1b}}}] run tag @e[tag=smoke] add item3
execute if entity @s[scores={am_gamescore2=1..600}] at @e[tag=smoke,limit=1] positioned ~ ~0.25 ~ if entity @e[type=item,distance=0..1,nbt={Item:{tag:{smokeitem4:1b}}}] run tag @e[tag=smoke] add item4
execute if entity @s[scores={am_gamescore2=1..600}] at @e[tag=smoke,limit=1] positioned ~ ~0.25 ~ if entity @e[type=item,distance=0..1,nbt={Item:{tag:{smokeitem5:1b}}}] run tag @e[tag=smoke] add item5
execute if entity @s[scores={am_gamescore2=1..600}] at @e[tag=smoke,limit=1] positioned ~ ~0.25 ~ if entity @e[type=item,distance=0..1,nbt={Item:{tag:{smokeitem6:1b}}}] run tag @e[tag=smoke] add item6
execute if entity @s[scores={am_gamescore2=1..600}] at @e[tag=smoke,limit=1] positioned ~ ~0.25 ~ if entity @e[type=item,distance=0..1,nbt={Item:{tag:{smokeitem7:1b}}}] run tag @e[tag=smoke] add item7
execute if entity @e[tag=smoke,tag=item1,tag=item2,tag=item3,tag=item4,tag=item5,tag=item6,tag=item7] run function ttt:amogus/minigames/id6/service_success


execute if entity @s[scores={am_gamescore2=-999..-100}] unless entity @a[tag=amplayer,scores={x=17..25,z=142..150}] run scoreboard players set @s am_gamescore2 -1000
execute if entity @s[scores={am_gamescore2=-161..-100}] if entity @e[tag=doorinteract,tag=!locked] run scoreboard players set @s am_gamescore2 -162
execute if entity @s[scores={am_gamescore2=-104}] run playsound custom.act3.bald.ruler_slap master @a 34 27 137 1000
execute if entity @s[scores={am_gamescore2=-108}] run playsound custom.act3.bald.ruler_slap master @a 34 27 137 1000
execute if entity @s[scores={am_gamescore2=-112}] run tellraw @a [{"text":"<","color":"white"},{"text":"Baldi","color":"green"},{"text":"> "},{"text":"Where is he?","color":"green"}]
execute if entity @s[scores={am_gamescore2=-112}] run playsound custom.t2s.baldi.cafeteria_where master @a 34 27 137 1000

execute if entity @s[scores={am_gamescore2=-138}] run execute as @e[tag=smoke,limit=1] at @s run playsound custom.t2s.smoke.cafeteria_snitch master @a ~ ~ ~ 1000
execute if entity @s[scores={am_gamescore2=-138}] run tellraw @a [{"text":"<","color":"white"},{"text":"Big Smoke","color":"#004406"},{"text":"> "},{"text":"He's over there!","color":"#004406"}]

execute if entity @s[scores={am_gamescore2=-162}] run function ttt:amogus/minigames/id6/faculty_find