#execute as @e[tag=villshop] at @s run playsound entity.villager.no master @a ~ ~ ~ 1000
playsound custom.act1.shallnotpass master @a ~ ~ ~ 1000
scoreboard players set @p[team=p] deathreason 8
execute unless entity @a[team=p,nbt={Inventory:[{tag:{key:1b}}]}] run tellraw @a [{"text":"<","color":"white"},{"text":"Guardsman","color":"yellow"},{"text":"> "},{"text":"I didn't give you permission to enter our village!","color":"yellow"}]
execute if entity @a[team=p,nbt={Inventory:[{tag:{key:1b}}]}] run tellraw @a [{"text":"<","color":"white"},{"text":"Guardsman","color":"yellow"},{"text":"> "},{"text":"You may have the key, but not my permission!","color":"yellow"}]
effect give @p[team=p] instant_damage 1 100 true
execute as @a[team=p] at @s run summon lightning_bolt
tag @e[tag=sv] add silentdeath