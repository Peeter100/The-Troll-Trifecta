execute unless entity @s[tag=backroomp] run stopsound @a master
execute unless entity @s[tag=backroomp] run scoreboard players set @s deathreason 12
execute unless entity @s[tag=backroomp] run kill @s

execute if entity @s[tag=backroomp] run effect give @s instant_health 1 100 true
execute if entity @s[tag=backroomp] run tp @s 2 17 107 0 5
execute if entity @s[tag=backroomp] run tellraw @a [{"text":"<","color":"white"},{"text":"Freddy","color":"#E05A00"},{"text":"> "},{"text":"Come over here and kiss me on my hot mouth!","color":"#E05A00"}]
execute if entity @s[tag=backroomp] run playsound custom.act3.kissme master @a ~ ~ ~ 1000