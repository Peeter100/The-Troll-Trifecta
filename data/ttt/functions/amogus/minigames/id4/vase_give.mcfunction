scoreboard players set @s am_gametimer 700
function ttt:amogus/minigames/id4/stopsound_playtime
execute as @e[tag=vase] at @s run particle happy_villager ~ ~0.25 ~ .4 .6 .4 0 50 force @a
execute as @e[tag=vase] at @s run playsound entity.player.levelup master @a ~ ~ ~ 1000
execute as @e[tag=principal] at @s run playsound custom.act3.bald.principal_give_vase master @a ~ ~ ~ 1000
tellraw @a [{"text":"<","color":"white"},{"text":"Principal of The Thing","color":"gray"},{"text":"> "},{"text":"This work of art is incredible!","color":"gray"}]
kill @e[tag=vase]