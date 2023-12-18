scoreboard players add @s npcbodytp 1

execute if entity @e[tag=sv,scores={am_gamescore4=8..12}] run scoreboard players add @s npcbodytp 1
execute if entity @e[tag=sv,scores={am_gamescore4=13..}] if entity @s[scores={npcbodytp=5..6}] run scoreboard players set @s npcbodytp 8

# tellraw @a {"score":{"name":"@e[tag=sv,limit=1]","objective":"am_gamescore4"}}
# tellraw @a {"score":{"name":"@s","objective":"npcbodytp"}}

execute if score @s npcbodytp matches ..1 run tp @s -27 21 87 0 0
execute if score @s npcbodytp matches 2 run tp @s -25 21 91 -8 0
execute if score @s npcbodytp matches 3 run tp @s -26 21 94 -26 0
execute if score @s npcbodytp matches 4 run tp @s -31 21 92 -18 0
execute if score @s npcbodytp matches 5..6 run tp @s -30 21 95 0 0

# 7 --> breathing entry
execute if score @s npcbodytp matches 7 run tp @s -30 21 95 0 0

# 8 --> door entry
execute if score @s npcbodytp matches 8..99 run tp @s -30 21 98 -90 0


execute if score @s npcbodytp matches 7..99 run tag @s add attackphase
execute if score @s npcbodytp matches 7..99 run playsound custom.act3.fnaf.breath master @a -30 22 98 0.9 0.8
execute if score @s npcbodytp matches 7..99 run scoreboard players set @s npcbodytp 2200


# visual
execute if score @s npcbodytp matches 3 run item replace entity @s weapon.mainhand with chain{CustomModelData:6}
execute unless score @s npcbodytp matches 3 run item replace entity @s weapon.mainhand with chain{CustomModelData:5}