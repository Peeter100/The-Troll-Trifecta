execute unless entity @a[tag=amplayer,scores={Game_Choice=1}] run function ttt:amogus/minigames/id10/enable_fnaf_mapstart

execute if entity @a[tag=amplayer,scores={Game_Choice=1}] run scoreboard players set @s am_gametimer 101
execute if entity @a[tag=amplayer,scores={Game_Choice=1}] run tellraw @a {"text":"*you pick up the phone*","color":"yellow"}
execute if entity @a[tag=amplayer,scores={Game_Choice=1}] at @p[tag=amplayer] run playsound custom.act3.fnaf.quirky master @a ~ ~ ~ 1000

stopsound @a master custom.act3.fnaf.ring
scoreboard players reset @a Game_Choice