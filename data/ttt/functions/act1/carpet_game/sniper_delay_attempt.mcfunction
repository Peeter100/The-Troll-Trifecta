execute as @e[type=armor_stand,tag=sniper,limit=1] at @s run tp @s ~ ~ ~ facing entity @p[team=p] eyes
execute at @e[type=armor_stand,tag=sniper,limit=1] as @p[team=p] at @s anchored eyes run tp @e[type=armor_stand,tag=snipertarget,limit=1] ~ 30.5 ~-1

execute if score @s fnf_carpetdeaths matches 1.. if predicate ttt:75ch unless entity @a[team=p,scores={z=149..}] run function ttt:act1/carpet_game/sniper_delay