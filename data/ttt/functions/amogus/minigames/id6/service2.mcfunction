execute if entity @s[scores={am_gamescore2=1..300}] run function ttt:amogus/minigames/id6/service_countdown

execute if entity @s[scores={am_gamescore2=340}] run tellraw @a [{"text":"<","color":"white"},{"text":"Shadow","color":"#C42626"},{"text":"> "},{"text":"...and raw coffee beans!","color":"#C42626"}]

execute if entity @s[scores={am_gamescore2=1..300}] at @e[tag=shadow,limit=1] positioned ~ ~0.25 ~ if entity @e[type=item,distance=0..1,nbt=!{Item:{tag:{gun:1b}}},nbt=!{Item:{tag:{coffee:1b}}}] run function ttt:amogus/minigames/id6/service_fail
execute if entity @s[scores={am_gamescore2=0}] run function ttt:amogus/minigames/id6/service_fail

execute if entity @s[scores={am_gamescore2=1..300}] at @e[tag=shadow,limit=1] positioned ~ ~0.25 ~ if entity @e[type=item,distance=0..1,nbt={Item:{tag:{gun:1b}}}] run tag @e[tag=shadow] add hasgun
execute if entity @s[scores={am_gamescore2=1..300}] at @e[tag=shadow,limit=1] positioned ~ ~0.25 ~ if entity @e[type=item,distance=0..1,nbt={Item:{tag:{coffee:1b}}}] run tag @e[tag=shadow] add hascoffee
execute if entity @e[tag=shadow,tag=hasgun,tag=hascoffee] run function ttt:amogus/minigames/id6/service_success


execute if entity @s[scores={am_gamescore2=-999..-100}] unless entity @a[tag=amplayer,scores={x=17..25,z=142..150}] run scoreboard players set @s am_gamescore2 -1000
execute if entity @s[scores={am_gamescore2=-170..-100}] if entity @e[tag=doorinteract,tag=!locked] run scoreboard players set @s am_gamescore2 -230
execute if entity @s[scores={am_gamescore2=-104}] run playsound custom.act3.bald.ruler_slap master @a 34 27 137 1000
execute if entity @s[scores={am_gamescore2=-108}] run playsound custom.act3.bald.ruler_slap master @a 34 27 137 1000
execute if entity @s[scores={am_gamescore2=-112}] run tellraw @a [{"text":"<","color":"white"},{"text":"Baldi","color":"green"},{"text":"> "},{"text":"Where is he?","color":"green"}]
execute if entity @s[scores={am_gamescore2=-112}] run playsound custom.t2s.baldi.cafeteria_where master @a 34 27 137 1000

execute if entity @s[scores={am_gamescore2=-138}] as @e[tag=shadow,limit=1] at @s run playsound custom.t2s.shadow.cafeteria_kill master @a ~ ~ ~ 1000
execute if entity @s[scores={am_gamescore2=-138}] run tellraw @a [{"text":"<","color":"white"},{"text":"Shadow","color":"#C42626"},{"text":"> "},{"text":"Don't worry, old man!","color":"#C42626"}]

execute if entity @s[scores={am_gamescore2=-171}] as @e[tag=shadow,limit=1] at @s run playsound custom.t2s.shadow.chaos_blast master @a ~ ~ ~ 1000
execute if entity @s[scores={am_gamescore2=-175}] run tellraw @a [{"text":"<","color":"white"},{"text":"Shadow","color":"#C42626"},{"text":"> "},{"text":"CHAOS-","color":"#C42626"}]
execute if entity @s[scores={am_gamescore2=-198}] run tellraw @a [{"text":"<","color":"white"},{"text":"Shadow","color":"#C42626"},{"text":"> "},{"text":"-BLAST!","color":"#C42626"}]
execute if entity @s[scores={am_gamescore2=-198}] as @r[tag=amplayer] at @s run function ttt:amogus/minigames/id2/timeup

execute if entity @s[scores={am_gamescore2=-230}] run function ttt:amogus/minigames/id6/faculty_find