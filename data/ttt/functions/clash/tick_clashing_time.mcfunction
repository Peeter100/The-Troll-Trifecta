title @a actionbar [{"text":"Score: ","color":"green"},{"score":{"name":"@s","objective":"cr_score"},"color":"green"}]
execute if entity @s[scores={acttimer=945..949}] run scoreboard players set @s acttimer 925
clear @a glass_bottle

execute store result score @s cr_gobalive if entity @e[type=zombie,tag=clashmob]
execute unless score @s cr_gobalive = @s cr_gobspawned run function ttt:clash/kill_goblin

execute store result score @s cr_baralive if entity @e[type=husk,tag=clashmob]
execute unless score @s cr_baralive = @s cr_barspawned run function ttt:clash/kill_barbarian

execute store result score @s cr_witalive if entity @e[type=witch,tag=clashmob]
execute unless score @s cr_witalive = @s cr_witspawned run function ttt:clash/kill_witch

execute store result score @s cr_hogalive if entity @e[type=zombie_villager,tag=clashmob]
execute unless score @s cr_hogalive = @s cr_hogspawned run function ttt:clash/kill_hog

scoreboard players remove @s[scores={dialoguetime=51..}] dialoguetime 1
execute if entity @s[scores={dialoguetime=150}] run give @a[team=p,scores={hp=..16}] potion{display:{Name:'{"text":"Potion of Productivity","color":"gold","italic":false}'},CustomPotionEffects:[{Id:1,Amplifier:4b,Duration:200,ShowParticles:1b},{Id:5,Amplifier:1b,Duration:200,ShowParticles:1b},{Id:6,Amplifier:10b,Duration:1},{Id:11,Amplifier:1b,Duration:200,ShowParticles:1b}],CustomPotionColor:16711680} 1
execute if entity @s[scores={dialoguetime=100}] run give @a[team=p,scores={hp=..19}] splash_potion{display:{Name:'{"text":"Potion of Healing","color":"yellow","italic":false}'},CustomPotionEffects:[{Id:5,Amplifier:1b,Duration:60,ShowParticles:1b},{Id:6,Amplifier:1b,Duration:1}],CustomPotionColor:16750335} 1
execute if entity @s[scores={dialoguetime=..0}] run give @a[team=p] gold_ingot{display:{Name:'{"text":"Snowball Ammo","color":"aqua","italic":false}'},CustomModelData:2} 1
execute if entity @s[scores={dialoguetime=..0}] run scoreboard players set @s dialoguetime 200

execute store result score @s f3_skelspawned if entity @e[type=skeleton,tag=clashmob]
execute as @e[tag=clashmob] at @s run function ttt:clash/tick_per_mob

execute as @a[team=p,scores={rc=1..},nbt=!{Inventory:[{id:"minecraft:gold_ingot"}]}] at @s run tellraw @s {"text":"No ammo!","color":"red"}
execute as @a[team=p,scores={rc=1..},nbt={Inventory:[{id:"minecraft:gold_ingot"}]}] at @s run function ttt:clash/snow_cannon

execute if entity @s[scores={cr_hogspawned=0,acttimer=926}] if predicate ttt:25ch run function ttt:clash/spawn_hog
execute if entity @s[scores={cr_gobspawned=..8,acttimer=926}] run function ttt:clash/spawn_goblin
execute if entity @s[scores={cr_barspawned=..3,acttimer=927}] run function ttt:clash/spawn_barbarian
execute if entity @s[scores={cr_witspawned=0,acttimer=928}] if predicate ttt:25ch run function ttt:clash/spawn_witch

execute as @a[team=p,scores={y=19..},nbt={OnGround:1b}] at @s run function ttt:clash/fire

execute if entity @s[scores={cr_score=6000..}] run scoreboard players set @s acttimer 950
# prev 2750
# execute if entity @s[scores={cr_score=4500..,cr_beeninbattle=4..}] run scoreboard players set @s acttimer 950