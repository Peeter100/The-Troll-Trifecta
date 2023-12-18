execute store result score @s f3_vinspawned if entity @e[type=vindicator,tag=bossmob]
execute if score @s f3_vinspawned matches ..6 run function ttt:finale/phase1/spawn_vindicator
#execute store result score @s f3_pillspawned if entity @e[type=pillager,tag=bossmob]
#execute if score @s f3_pillspawned matches ..7 run function ttt:finale/phase1/spawn_pillager
#execute store result score @s f3_skelspawned if entity @e[type=skeleton,tag=bossmob]
#execute if score @s f3_skelspawned matches ..2 run function ttt:finale/phase1/spawn_skeleton
execute store result score @s f3_pillspawned if entity @e[type=pillager,tag=bossmob]
execute if score @s f3_pillspawned matches ..9 run function ttt:finale/phase1/spawn_pillager
execute store result score @s f3_ravspawned if entity @e[type=ravager,tag=bossmob]
execute if score @s f3_ravspawned matches ..0 run function ttt:finale/phase2/spawn_ravager
execute store result score @s f3_evokespawned if entity @e[type=evoker,tag=bossmob]
execute if score @s f3_evokespawned matches ..1 run function ttt:finale/phase2/spawn_evoker
execute store result score @s f3_blazespawned if entity @e[type=blaze,tag=bossmob]
execute if score @s f3_blazespawned matches ..2 run function ttt:finale/phase2/spawn_blaze

execute as @e[tag=bossmob] at @s run function ttt:finale/phase1/mobgroup_check
execute positioned -118 15 21 as @e[type=small_fireball,distance=40..] run kill @s
execute positioned -118 15 21 as @e[type=vex,distance=40..] run tp @s -118 16 21

scoreboard players add @s f3_bosshp 1
scoreboard players remove @s f3_bosstakenhp 1
execute if score @s f3_bosshp > @s f3_healthmargin run scoreboard players operation @s f3_bosshp = @s f3_healthmargin