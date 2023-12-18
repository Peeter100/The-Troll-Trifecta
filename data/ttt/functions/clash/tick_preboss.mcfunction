title @a actionbar [{"text":"Score: ","color":"green"},{"score":{"name":"@s","objective":"cr_score"},"color":"green"}]
clear @a glass_bottle

execute store result score @s cr_gobalive if entity @e[tag=clashmob,tag=goblinmob]
execute unless score @s cr_gobalive = @s cr_gobspawned run function ttt:clash/kill_goblin

execute store result score @s cr_baralive if entity @e[tag=clashmob,tag=barbarianmob]
execute unless score @s cr_baralive = @s cr_barspawned run function ttt:clash/kill_barbarian

execute store result score @s cr_witalive if entity @e[tag=clashmob,tag=witchmob]
execute unless score @s cr_witalive = @s cr_witspawned run function ttt:clash/kill_witch

execute store result score @s cr_hogalive if entity @e[tag=clashmob,tag=hogridermob]
execute unless score @s cr_hogalive = @s cr_hogspawned run function ttt:clash/kill_hog

scoreboard players remove @s[scores={dialoguetime=51..}] dialoguetime 1
execute if entity @s[scores={dialoguetime=100}] run give @a[team=p,scores={hp=..19}] splash_potion{display:{Name:'{"text":"Potion of Healing","color":"yellow","italic":false}'},CustomPotionEffects:[{Id:5,Amplifier:1b,Duration:60,ShowParticles:1b},{Id:6,Amplifier:1b,Duration:1}],CustomPotionColor:16750335} 1
execute if entity @s[scores={dialoguetime=..0}] run give @a[team=p] gold_ingot{display:{Name:'{"text":"Snowball Ammo","color":"aqua","italic":false}'},CustomModelData:2} 1
execute if entity @s[scores={dialoguetime=..0}] run scoreboard players set @s dialoguetime 200

execute store result score @s f3_skelspawned if entity @e[type=skeleton,tag=clashmob]
execute as @e[tag=clashmob] unless entity @s[type=iron_golem] at @s run function ttt:clash/tick_per_mob

execute as @a[team=p,scores={rc=1..},nbt=!{Inventory:[{id:"minecraft:gold_ingot"}]}] at @s run tellraw @s {"text":"No ammo!","color":"red"}
execute as @a[team=p,scores={rc=1..},nbt={Inventory:[{id:"minecraft:gold_ingot"}]}] at @s run function ttt:clash/snow_cannon

execute as @a[team=p,scores={y=19..},nbt={OnGround:1b}] at @s run function ttt:clash/fire

execute store result bossbar minecraft:gianthp value run data get entity @e[tag=giantboss,limit=1] Health
execute as @e[tag=giantboss] at @s positioned ~ ~1.75 ~ run tp @e[tag=giantvis] @s
data merge entity @e[tag=giantboss,limit=1] {AngerTime:1000s}

tag @a[scores={rc=0},tag=cannonfire] remove cannonfire

execute if entity @s[scores={acttimer=960}] run tellraw @a [{"text":"<"},{"text":"Sans","color":"#C4E2FF"},{"text":"> "},{"text":"you're doing great","color":"#C4E2FF","font":"sans"}]
execute if entity @s[scores={acttimer=960}] as @r[tag=clashplayer] at @s run playsound custom.act2.sans.speech_mid master @a ~ ~ ~ 1000

execute if entity @s[scores={acttimer=990}] run tellraw @a [{"text":"<"},{"text":"Sans","color":"#C4E2FF"},{"text":"> "},{"text":"time for the final boss","color":"#C4E2FF","font":"sans"}]
execute if entity @s[scores={acttimer=990}] as @r[tag=clashplayer] at @s run playsound custom.act2.sans.speech_mid master @a ~ ~ ~ 1000

execute if entity @s[scores={acttimer=1010}] run summon iron_golem -60 31 105 {Silent:1b,Team:"enemy",PersistenceRequired:1b,Health:200f,PlayerCreated:0b,AngerTime:2147483647,Tags:["clashmob","forkill","giantboss","clashready"],ActiveEffects:[{Id:14,Amplifier:0b,Duration:9999999,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:10000},{Name:generic.knockback_resistance,Base:1},{Name:generic.movement_speed,Base:0.3},{Name:generic.attack_damage,Base:8},{Name:generic.attack_knockback,Base:1},{Name:generic.follow_range,Base:120}]}
execute if entity @s[scores={acttimer=1010}] run summon armor_stand -60 32.75 105 {NoGravity:1b,Invulnerable:1b,ShowArms:0b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["forkill","giantvis"],Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},DisabledSlots:4144959,HandItems:[{id:"minecraft:bone",Count:1b,tag:{CustomModelData:101}},{}]}
execute if entity @s[scores={acttimer=1010}] run summon armor_stand -60 32.75 105 {NoGravity:1b,Invulnerable:1b,ShowArms:0b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["forkill","giantvis1","giantvis"],Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},DisabledSlots:4144959,HandItems:[{id:"minecraft:bone",Count:1b,tag:{CustomModelData:103}},{id:"minecraft:bone",Count:1b,tag:{CustomModelData:102}}]}
execute if entity @s[scores={acttimer=1010}] run summon armor_stand -60 32.75 105 {NoGravity:1b,Invulnerable:1b,ShowArms:0b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["forkill","giantvis2","giantvis"],Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},DisabledSlots:4144959,HandItems:[{id:"minecraft:bone",Count:1b,tag:{CustomModelData:105}},{id:"minecraft:bone",Count:1b,tag:{CustomModelData:104}}]}
execute if entity @s[scores={acttimer=1011}] run function ttt:clash/prepare_boss_hp

execute if entity @s[scores={acttimer=1020}] run function ttt:clash/spawn_boss