title @a actionbar [{"text":"Score: ","color":"green"},{"score":{"name":"@s","objective":"cr_score"},"color":"green"}]
execute if entity @s[scores={acttimer=595..599}] run scoreboard players set @s acttimer 585

execute store result score @s cr_icealive if entity @e[type=drowned,tag=clashmob]
execute unless score @s cr_icealive = @s cr_icespawned run function ttt:clash/kill_ice

scoreboard players remove @s[scores={dialoguetime=51..}] dialoguetime 1
execute if entity @s[scores={dialoguetime=100}] run give @a[team=p,scores={hp=..19}] splash_potion{display:{Name:'{"text":"Potion of Healing","color":"yellow","italic":false}'},CustomPotionEffects:[{Id:5,Amplifier:1b,Duration:60,ShowParticles:1b},{Id:6,Amplifier:1b,Duration:1}],CustomPotionColor:16750335} 1
execute if entity @s[scores={dialoguetime=..0}] run give @a[team=p] gold_ingot{display:{Name:'{"text":"Snowball Ammo","color":"aqua","italic":false}'},CustomModelData:2} 1
execute if entity @s[scores={dialoguetime=..0}] run scoreboard players set @s dialoguetime 200

execute as @e[type=drowned,tag=clashmob] at @s run function ttt:clash/tick_per_mob

execute as @a[team=p,scores={rc=1..},nbt=!{Inventory:[{id:"minecraft:gold_ingot"}]}] at @s run tellraw @s {"text":"No ammo!","color":"red"}
execute as @a[team=p,scores={rc=1..},nbt={Inventory:[{id:"minecraft:gold_ingot"}]}] at @s run function ttt:clash/snow_cannon

execute if entity @s[scores={cr_icespawned=..14,acttimer=594,cr_score=..1999}] run function ttt:clash/spawn_ice

execute if entity @s[scores={cr_icespawned=0,cr_score=2000..}] run scoreboard players set @s acttimer 600
execute as @a[team=p,scores={y=19..},nbt={OnGround:1b}] at @s run function ttt:clash/fire