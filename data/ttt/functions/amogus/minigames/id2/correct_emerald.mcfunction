title @a subtitle {"text":""}
execute as @e[tag=shadowhead] at @s run playsound custom.t2s.shadow.emerald_correct master @a ~ ~ ~ 1000
tellraw @a [{"text":"<","color":"white"},{"text":"Shadow","color":"#C42626"},{"text":"> "},{"text":"Took you long enough!","color":"#C42626"}]
clear @a carrot_on_a_stick{damnemerald:1b}
kill @e[type=item,nbt={Item:{tag:{damnemerald:1b}}}]
tag @e[tag=shadowbody] add forcegun
item replace entity @e[tag=shadowbody] weapon.offhand with gold_ingot{CustomModelData:17}
scoreboard players set @e[tag=sv] am_gametimer 3000