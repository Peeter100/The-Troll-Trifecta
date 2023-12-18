function ttt:amogus/minigames/id4/stopsound_baldi
execute as @r[tag=amplayer] at @s run playsound custom.t2s.baldi.vase_forget master @a ~ ~ ~ 1000
tellraw @a [{"text":"<","color":"white"},{"text":"Baldi","color":"green"},{"text":"> "},{"text":"You need to take the vase with you!","color":"green"}]
tag @e[tag=baldi] add use_door1
execute if entity @s[scores={am_gametimer=101..188}] run scoreboard players set @s am_gametimer 189