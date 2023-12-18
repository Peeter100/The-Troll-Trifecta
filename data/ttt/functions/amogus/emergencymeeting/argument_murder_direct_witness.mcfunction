scoreboard players set @s acttimer 3010
scoreboard players set @s dialoguetime 40

execute at @p[tag=amplayer] run playsound custom.amogus.text master @a ~ ~ ~ 1000

# report hijack
tag @a[tag=amplayer] remove reportee
execute unless entity @e[type=villager,tag=reportee,tag=noticedmurder] run tag @e[type=villager,tag=amogai,tag=noticedmurder,limit=1,sort=random] add reportee
tag @e[type=villager,tag=reportee,tag=!noticedmurder] remove reportee

execute if entity @e[type=villager,tag=reportee,tag=orange] run tellraw @a [{"text":"<","color":"white"},{"text":"Orange","color":"gold"},{"text":"> ","color":"white"},{"text":"I saw Red murder someone!","color":"gold"}]
execute if entity @e[type=villager,tag=reportee,tag=yellow] run tellraw @a [{"text":"<","color":"white"},{"text":"Yellow","color":"yellow"},{"text":"> ","color":"white"},{"text":"I saw Red murder someone!","color":"yellow"}]
execute if entity @e[type=villager,tag=reportee,tag=lime] run tellraw @a [{"text":"<","color":"white"},{"text":"Lime","color":"green"},{"text":"> ","color":"white"},{"text":"I saw Red murder someone!","color":"green"}]
execute if entity @e[type=villager,tag=reportee,tag=green] run tellraw @a [{"text":"<","color":"white"},{"text":"Green","color":"dark_green"},{"text":"> ","color":"white"},{"text":"I saw Red murder someone!","color":"dark_green"}]
execute if entity @e[type=villager,tag=reportee,tag=cyan] run tellraw @a [{"text":"<","color":"white"},{"text":"Cyan","color":"aqua"},{"text":"> ","color":"white"},{"text":"I saw Red murder someone!","color":"aqua"}]
execute if entity @e[type=villager,tag=reportee,tag=pink] run tellraw @a [{"text":"<","color":"white"},{"text":"Pink","color":"light_purple"},{"text":"> ","color":"white"},{"text":"I saw Red murder someone!","color":"light_purple"}]
execute if entity @e[type=villager,tag=reportee,tag=purple] run tellraw @a [{"text":"<","color":"white"},{"text":"Purple","color":"dark_purple"},{"text":"> ","color":"white"},{"text":"I saw Red murder someone!","color":"dark_purple"}]
execute if entity @e[type=villager,tag=reportee,tag=white] run tellraw @a [{"text":"<","color":"white"},{"text":"White","color":"white"},{"text":"> ","color":"white"},{"text":"I saw Red murder someone!","color":"white"}]
execute if entity @e[type=villager,tag=reportee,tag=black] run tellraw @a [{"text":"<","color":"white"},{"text":"Blue","color":"blue"},{"text":"> ","color":"white"},{"text":"I saw Red murder someone!","color":"blue"}]