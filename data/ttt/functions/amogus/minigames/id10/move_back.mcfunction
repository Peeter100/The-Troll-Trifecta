playsound custom.act3.fnaf.footsteps master @a ~ ~ ~ 0.9 1
tp @s ~ 10 ~
tag @s remove attackphase

scoreboard players set @s npcbodytp 0
execute if entity @e[tag=sv,scores={am_gamescore4=4..10,am_gamescore1=150..}] run scoreboard players set @s npcbodytp 2
execute if entity @e[tag=sv,scores={am_gamescore4=1..3,am_gamescore1=250..}] run scoreboard players set @s npcbodytp 3