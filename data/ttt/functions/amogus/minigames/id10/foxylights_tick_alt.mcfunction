scoreboard players remove @s npcbodytp 5
execute if score @s npcbodytp matches 3000..3007 run scoreboard players set @s npcbodytp 3008
execute if score @s npcbodytp matches 4800..4807 run scoreboard players set @s npcbodytp 4808

particle flame ^.18 ^.25 ^.3 0 0 0 0 1 force @a
particle smoke ^.18 ^.25 ^.3 0 0 0 0 1 normal @a