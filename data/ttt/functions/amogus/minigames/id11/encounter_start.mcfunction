tp @a[tag=amplayer] -58 16 139 0 0
clear @a chain
effect clear @a[tag=amplayer] invisibility
tag @a[tag=amplayer] add offhandnoupdate
kill @e[type=item,nbt={Item:{id:"minecraft:chain"}}]
give @a[tag=amplayer] iron_axe{display:{Name:'{"text":"Duel Axe","color":"white","italic":false}'},HideFlags:39,Unbreakable:1b,Enchantments:[{id:"minecraft:sharpness",lvl:2s},{id:"minecraft:knockback",lvl:1s}]} 1
item replace entity @a[tag=amplayer] weapon.offhand with shield{HideFlags:7,display:{Name:'{"text":"Shield","color":"white","italic":false}'},Unbreakable:1b} 1

execute if score @s am_gamescore4 matches 1.. run scoreboard players set @s am_gametimer 1134
execute if score @s am_gamescore4 matches 1.. run tellraw @a [{"text":"<","color":"white"},{"text":"Freddy","color":"#E05A00"},{"text":"> "},{"text":"Come over here and kiss me on my hot mouth!","color":"#E05A00"}]
execute if score @s am_gamescore4 matches 1.. at @p[tag=amplayer] run playsound custom.act3.kissme master @a ~ ~ ~ 1000