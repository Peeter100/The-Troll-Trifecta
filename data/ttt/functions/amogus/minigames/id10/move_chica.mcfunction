scoreboard players add @s npcbodytp 1

execute if entity @e[tag=sv,scores={am_gamescore4=10..14}] run scoreboard players add @s npcbodytp 1
execute if entity @e[tag=sv,scores={am_gamescore4=15..}] if entity @s[scores={npcbodytp=5..6}] run scoreboard players set @s npcbodytp 8

# tellraw @a {"score":{"name":"@e[tag=sv,limit=1]","objective":"am_gamescore4"}}
# tellraw @a {"score":{"name":"@s","objective":"npcbodytp"}}

execute if score @s npcbodytp matches ..1 run tp @s -21 21 87 0 0
execute if score @s npcbodytp matches 2 run tp @s -23 21 90 7 0
execute if score @s npcbodytp matches 3 run tp @s -20 21 92 -65 0
execute if score @s npcbodytp matches 4 run tp @s -17 21 92 10 0
execute if score @s npcbodytp matches 5..6 run tp @s -18 21 95 0 0

# 7 --> breathing entry
execute if score @s npcbodytp matches 7 run tp @s -18 21 95 0 0

# 8 --> door entry
execute if score @s npcbodytp matches 8..99 run tp @s -18 21 98 90 0


execute if score @s npcbodytp matches 7..99 run tag @s add attackphase
execute if score @s npcbodytp matches 7..99 run playsound custom.act3.fnaf.breath master @a -18 22 98 0.975 1.2
execute if score @s npcbodytp matches 7..99 run scoreboard players set @s npcbodytp 2200