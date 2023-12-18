execute store result score @s x run data get entity @s Pos[0]
execute store result score @s y run data get entity @s Pos[1]
execute store result score @s z run data get entity @s Pos[2]

execute unless entity @s[scores={x=11..51,y=30..45,z=30..57}] run function ttt:act1/mario/leapball_kill

scoreboard players remove @s npcbodytp 1
execute if entity @s[scores={npcbodytp=..-2}] run tp @s ~ ~-0.25 ~
execute if entity @s[scores={npcbodytp=-1..0}] run tp @s ~ ~-0.1 ~
execute if entity @s[scores={npcbodytp=3..}] run tp @s ~ ~0.25 ~
execute if entity @s[scores={npcbodytp=1..2}] run tp @s ~ ~0.1 ~
execute at @s run tp @s ^ ^ ^0.25

#tellraw @a {"score":{"name":"@s","objective":"npcbodytp"}}
execute unless block ~ ~-0.25 ~ #ttt:passable run scoreboard players set @s npcbodytp 6

execute if entity @s[tag=fireball] run function ttt:act1/mario/leapball_fire_tick
execute if entity @s[tag=iceball] run function ttt:act1/mario/leapball_ice_tick