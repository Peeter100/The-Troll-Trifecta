title @a actionbar [{"text":"Score: ","color":"green"},{"score":{"name":"@s","objective":"cr_score"},"color":"green"}]
execute if entity @s[scores={acttimer=1065..}] run scoreboard players set @s acttimer 1025
clear @a glass_bottle

execute store result score @s cr_gobalive if entity @e[type=zombie,tag=clashmob]
execute unless score @s cr_gobalive = @s cr_gobspawned run function ttt:clash/kill_goblin

execute store result score @s cr_baralive if entity @e[type=husk,tag=clashmob]
execute unless score @s cr_baralive = @s cr_barspawned run function ttt:clash/kill_barbarian

execute store result score @s cr_witalive if entity @e[type=witch,tag=clashmob]
execute unless score @s cr_witalive = @s cr_witspawned run function ttt:clash/kill_witch

execute store result score @s cr_hogalive if entity @e[type=zombie_villager,tag=clashmob]
execute unless score @s cr_hogalive = @s cr_hogspawned run function ttt:clash/kill_hog

scoreboard players remove @s[scores={dialoguetime=26..}] dialoguetime 1
execute if entity @s[scores={dialoguetime=150}] run give @a[team=p,scores={hp=..16}] potion{display:{Name:'{"text":"Potion of Productivity","color":"gold","italic":false}'},CustomPotionEffects:[{Id:1,Amplifier:4b,Duration:200,ShowParticles:1b},{Id:5,Amplifier:1b,Duration:200,ShowParticles:1b},{Id:6,Amplifier:10b,Duration:1},{Id:11,Amplifier:1b,Duration:200,ShowParticles:1b}],CustomPotionColor:16711680} 1
execute if entity @s[scores={dialoguetime=100}] run give @a[team=p,scores={hp=..19}] splash_potion{display:{Name:'{"text":"Potion of Healing","color":"yellow","italic":false}'},CustomPotionEffects:[{Id:5,Amplifier:1b,Duration:60,ShowParticles:1b},{Id:6,Amplifier:1b,Duration:1}],CustomPotionColor:16750335} 1
execute if entity @s[scores={dialoguetime=..0}] run give @a[team=p] gold_ingot{display:{Name:'{"text":"Snowball Ammo","color":"aqua","italic":false}'},CustomModelData:2} 1
execute if entity @s[scores={dialoguetime=..0}] run scoreboard players set @s dialoguetime 200

execute as @e[type=iron_golem,tag=clashmob] at @s if block ~ ~ ~ water store result entity @s Health float 1 run scoreboard players get @e[type=marker,tag=sv,limit=1] cr_gianthp
execute as @e[type=iron_golem,tag=clashmob] at @s if block ~ ~ ~ water run tp @s -58 16 150

execute store result score @s f3_skelspawned if entity @e[type=skeleton,tag=clashmob]
execute as @e[tag=clashmob] unless entity @s[type=iron_golem] at @s run function ttt:clash/tick_per_mob

execute as @a[team=p,scores={rc=1..},nbt=!{Inventory:[{id:"minecraft:gold_ingot"}]}] at @s run tellraw @s {"text":"No ammo!","color":"red"}
execute as @a[team=p,scores={rc=1..},nbt={Inventory:[{id:"minecraft:gold_ingot"}]}] at @s run function ttt:clash/snow_cannon

# mob spawning here

execute as @a[team=p,scores={y=19..},nbt={OnGround:1b}] at @s run function ttt:clash/fire

execute store result bossbar minecraft:gianthp value run data get entity @e[type=iron_golem,tag=giantboss,limit=1] Health
execute as @e[type=iron_golem,tag=giantboss] at @s run tp @e[type=armor_stand,tag=giantvis] @s
execute as @e[type=armor_stand,tag=giantvis] at @s run tp @s ~ 17.75 ~
data merge entity @e[type=iron_golem,tag=giantboss,limit=1] {AngerTime:1000s}

execute if entity @s[scores={acttimer=1025..1034}] run function ttt:clash/boss_anim1
execute if entity @s[scores={acttimer=1035..1044}] run function ttt:clash/boss_anim2
execute if entity @s[scores={acttimer=1045..1054}] run function ttt:clash/boss_anim3
execute if entity @s[scores={acttimer=1055..1064}] run function ttt:clash/boss_anim4

execute positioned -58 16 150 run tp @e[type=vex,tag=clashvex,distance=45..] -58 16 150
execute unless entity @e[type=vex,tag=clashvex] run function ttt:clash/kill_vex
tag @a[scores={rc=0},tag=cannonfire] remove cannonfire

execute if entity @e[type=vex,tag=clashvex] unless entity @e[type=iron_golem] run scoreboard players set @s acttimer 1100