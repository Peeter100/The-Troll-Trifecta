worldborder warning distance 30
# title @a reset
effect clear @a slowness

execute as @e[tag=doormarker] at @s if entity @s[tag=x] run fill ~-1 ~ ~ ~1 ~2 ~ air
execute as @e[tag=doormarker] at @s if entity @s[tag=z] run fill ~ ~ ~-1 ~ ~2 ~1 air

# tp @e[tag=gameai,tag=orange] 15 21 100
# tp @e[tag=gameai,tag=yellow] 8 26 100
# tp @e[tag=gameai,tag=lime] 8 21 100
# tp @e[tag=gameai,tag=green] 1 26 100
# tp @e[tag=gameai,tag=cyan] 1 21 100
# tp @e[tag=gameai,tag=pink] 15 21 93
# tp @e[tag=gameai,tag=purple] 15 26 93
# tp @e[tag=gameai,tag=white] 8 21 93
# tp @e[tag=gameai,tag=black] 8 26 93

tp @e[type=zombie_villager,tag=amogzombai,tag=orange] 15 21 100
tp @e[type=zombie_villager,tag=amogzombai,tag=yellow] 8 26 100
tp @e[type=zombie_villager,tag=amogzombai,tag=lime] 8 21 100
tp @e[type=zombie_villager,tag=amogzombai,tag=green] 1 26 100
tp @e[type=zombie_villager,tag=amogzombai,tag=cyan] 1 21 100
tp @e[type=zombie_villager,tag=amogzombai,tag=pink] 15 21 93
tp @e[type=zombie_villager,tag=amogzombai,tag=purple] 15 26 93
tp @e[type=zombie_villager,tag=amogzombai,tag=white] 8 21 93
tp @e[type=zombie_villager,tag=amogzombai,tag=black] 8 26 93

tp @e[type=villager,tag=amogai,tag=orange] 35 1.0 104 -105 0
tp @e[type=villager,tag=amogai,tag=yellow] 39 1.0 104 105 0
tp @e[type=villager,tag=amogai,tag=lime] 38.0 1.0 101 5 0
tp @e[type=villager,tag=amogai,tag=green] 35 1.0 103 -90 0
tp @e[type=villager,tag=amogai,tag=cyan] 37.0 1.0 101 -5 0
tp @e[type=villager,tag=amogai,tag=pink] 39 1.0 102 75 0
tp @e[type=villager,tag=amogai,tag=purple] 39 1.0 103 90 0
tp @e[type=villager,tag=amogai,tag=white] 37.0 1.0 105 -175 0
tp @e[type=villager,tag=amogai,tag=black] 38.0 1.0 105 175 0

tp @e[type=armor_stand,tag=amogalive,tag=orange] 35 1.0 104 -105 0
tp @e[type=armor_stand,tag=amogalive,tag=yellow] 39 1.0 104 105 0
tp @e[type=armor_stand,tag=amogalive,tag=lime] 38.0 1.0 101 5 0
tp @e[type=armor_stand,tag=amogalive,tag=green] 35 1.0 103 -90 0
tp @e[type=armor_stand,tag=amogalive,tag=cyan] 37.0 1.0 101 -5 0
tp @e[type=armor_stand,tag=amogalive,tag=pink] 39 1.0 102 75 0
tp @e[type=armor_stand,tag=amogalive,tag=purple] 39 1.0 103 90 0
tp @e[type=armor_stand,tag=amogalive,tag=white] 37.0 1.0 105 -175 0
tp @e[type=armor_stand,tag=amogalive,tag=black] 38.0 1.0 105 175 0

item replace entity @e[type=armor_stand,tag=amogdead] weapon.mainhand with air
# kill @e[type=armor_stand,tag=amogdead]

setblock 35 2 101 barrier
setblock 35 2 103 barrier
tp @a 35 1 102 -72 0