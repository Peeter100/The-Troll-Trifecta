execute unless score @s am_levelb matches -1..10 run scoreboard players set @s am_levelb -1

execute if entity @s[scores={d1=1,d2=1,d3=1,d4=1,d5=1,d6=1,st_am_opimp=1},tag=hasdiamonds] unless score @s am_levelb matches 1..10 run function ttt:amogus/intro/convert_to_slaughter
execute unless entity @s[scores={d1=1,d2=1,d3=1,d4=1,d5=1,d6=1,st_am_opimp=1},tag=hasdiamonds] if score @s am_levelb matches 1..10 run function ttt:amogus/intro/convert_from_slaughter