execute store result score @s f3_vinspawned if entity @e[type=vindicator,tag=bossmob]
execute if score @s f3_vinspawned matches ..12 run function ttt:finale/phase1/spawn_vindicator
execute store result score @s f3_pillspawned if entity @e[type=pillager,tag=bossmob]
execute if score @s f3_pillspawned matches ..6 run function ttt:finale/phase1/spawn_pillager
execute store result score @s f3_skelspawned if entity @e[type=skeleton,tag=bossmob]
execute if score @s f3_skelspawned matches ..0 run function ttt:finale/phase1/spawn_skeleton

execute as @e[tag=bossmob] at @s run function ttt:finale/phase1/mobgroup_check