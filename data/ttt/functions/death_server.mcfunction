tag @s remove hijackdeathseq
execute if entity @s[scores={act=1,actpart=2}] run scoreboard players set @s actpart 1
execute if entity @s[scores={act=2,actpart=2..}] run scoreboard players set @s actpart 1
execute if entity @s[scores={act=3,actpart=2..3}] run scoreboard players set @s actpart 1
execute unless entity @a[team=p,scores={deathreason=-1}] if entity @s[scores={act=3,actpart=4..},tag=!preventdeath] run tag @s add hijackdeathseq
#execute unless entity @a[team=p,scores={deathreason=-1}] if entity @s[scores={act=1,actpart=3}] run function ttt:switch_to_act2
execute unless entity @a[team=p,scores={deathreason=-1..14}] if entity @s[scores={act=1,actpart=3}] run function ttt:switch_to_act2

execute if entity @s[scores={act=1},tag=!silentdeath] run playsound custom.act1.death master @a ~ ~ ~ 1000
execute if entity @s[scores={act=2},tag=!silentdeath] run playsound custom.act2.death master @a ~ ~ ~ 1000
execute if entity @s[scores={act=3},tag=!silentdeath] run playsound custom.act3.death master @a ~ ~ ~ 1000