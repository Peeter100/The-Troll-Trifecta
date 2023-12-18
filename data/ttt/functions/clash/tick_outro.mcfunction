execute if entity @s[scores={acttimer=..1199}] run title @a actionbar [{"text":"Score: ","color":"green"},{"score":{"name":"@s","objective":"cr_score"},"color":"green"}]
clear @a glass_bottle

execute as @a[team=p,scores={y=19..},nbt={OnGround:1b}] at @s if entity @e[tag=sv,scores={acttimer=..1199}] run function ttt:clash/fire

execute if entity @s[scores={acttimer=1101}] run kill @e[tag=clashmob]
execute if entity @s[scores={acttimer=1101}] run kill @e[type=vex]
execute if entity @s[scores={acttimer=1101}] as @e[tag=giantvis1] at @s run playsound entity.generic.explode master @a ~ ~ ~ 1000
execute if entity @s[scores={acttimer=1101}] as @e[tag=giantvis1] at @s run particle minecraft:explosion_emitter ~ ~1 ~ 2 5 2 0 2 force @a
execute if entity @s[scores={acttimer=1101}] run time set noon

execute if entity @s[scores={acttimer=1104}] as @e[tag=giantvis1] at @s run playsound entity.generic.explode master @a ~ ~ ~ 1000
execute if entity @s[scores={acttimer=1104}] as @e[tag=giantvis1] at @s run particle minecraft:explosion_emitter ~ ~1 ~ 2 5 2 0 2 force @a
execute if entity @s[scores={acttimer=1107}] as @e[tag=giantvis1] at @s run playsound entity.generic.explode master @a ~ ~ ~ 1000
execute if entity @s[scores={acttimer=1107}] as @e[tag=giantvis1] at @s run particle minecraft:explosion_emitter ~ ~1 ~ 2 5 2 0 2 force @a
execute if entity @s[scores={acttimer=1110}] as @e[tag=giantvis1] at @s run playsound entity.generic.explode master @a ~ ~ ~ 1000
execute if entity @s[scores={acttimer=1110}] as @e[tag=giantvis1] at @s run particle minecraft:explosion_emitter ~ ~1 ~ 2 5 2 0 2 force @a
execute if entity @s[scores={acttimer=1113}] as @e[tag=giantvis1] at @s run playsound entity.generic.explode master @a ~ ~ ~ 1000
execute if entity @s[scores={acttimer=1113}] as @e[tag=giantvis1] at @s run particle minecraft:explosion_emitter ~ ~1 ~ 2 5 2 0 2 force @a
execute if entity @s[scores={acttimer=1116}] as @e[tag=giantvis1] at @s run playsound entity.generic.explode master @a ~ ~ ~ 1000
execute if entity @s[scores={acttimer=1116}] as @e[tag=giantvis1] at @s run particle minecraft:explosion_emitter ~ ~1 ~ 2 5 2 0 2 force @a
execute if entity @s[scores={acttimer=1119}] as @e[tag=giantvis1] at @s run playsound entity.generic.explode master @a ~ ~ ~ 1000
execute if entity @s[scores={acttimer=1119}] as @e[tag=giantvis1] at @s run particle minecraft:explosion_emitter ~ ~1 ~ 2 5 2 0 2 force @a
execute if entity @s[scores={acttimer=1122}] as @e[tag=giantvis1] at @s run playsound entity.generic.explode master @a ~ ~ ~ 1000
execute if entity @s[scores={acttimer=1122}] as @e[tag=giantvis1] at @s run particle minecraft:explosion_emitter ~ ~1 ~ 2 5 2 0 2 force @a
execute if entity @s[scores={acttimer=1125}] as @e[tag=giantvis1] at @s run playsound entity.generic.explode master @a ~ ~ ~ 1000
execute if entity @s[scores={acttimer=1125}] as @e[tag=giantvis1] at @s run particle minecraft:explosion_emitter ~ ~1 ~ 2 5 2 0 2 force @a
execute if entity @s[scores={acttimer=1128}] as @e[tag=giantvis1] at @s run playsound entity.generic.explode master @a ~ ~ ~ 1000
execute if entity @s[scores={acttimer=1128}] as @e[tag=giantvis1] at @s run particle minecraft:explosion_emitter ~ ~1 ~ 2 5 2 0 2 force @a
execute if entity @s[scores={acttimer=1131}] as @e[tag=giantvis1] at @s run playsound entity.generic.explode master @a ~ ~ ~ 1000
execute if entity @s[scores={acttimer=1131}] as @e[tag=giantvis1] at @s run particle minecraft:explosion_emitter ~ ~1 ~ 2 5 2 0 2 force @a
execute if entity @s[scores={acttimer=1134}] as @e[tag=giantvis1] at @s run playsound entity.generic.explode master @a ~ ~ ~ 1000
execute if entity @s[scores={acttimer=1134}] as @e[tag=giantvis1] at @s run particle minecraft:explosion_emitter ~ ~1 ~ 2 5 2 0 2 force @a
execute if entity @s[scores={acttimer=1137}] as @e[tag=giantvis1] at @s run playsound entity.generic.explode master @a ~ ~ ~ 1000
execute if entity @s[scores={acttimer=1137}] as @e[tag=giantvis1] at @s run particle minecraft:explosion_emitter ~ ~1 ~ 2 5 2 0 2 force @a
execute if entity @s[scores={acttimer=1140}] as @e[tag=giantvis1] at @s run playsound entity.generic.explode master @a ~ ~ ~ 1000
execute if entity @s[scores={acttimer=1140}] as @e[tag=giantvis1] at @s run particle minecraft:explosion_emitter ~ ~1 ~ 2 5 2 0 2 force @a

execute if entity @s[scores={acttimer=1140}] as @e[tag=giantvis1] at @s run playsound block.note_block.basedrum master @a ~ ~ ~ 1000 0
execute if entity @s[scores={acttimer=1140}] as @e[tag=giantvis1] at @s run playsound block.note_block.basedrum master @a ~ ~ ~ 1000 0
execute if entity @s[scores={acttimer=1140}] as @e[tag=giantvis1] at @s run particle block redstone_block ~ ~1 ~ 2 5 2 0 200 force @a
execute if entity @s[scores={acttimer=1140}] run kill @e[tag=giantvis]
execute if entity @s[scores={acttimer=1140}] run bossbar set minecraft:gianthp visible false
execute if entity @s[scores={acttimer=1140,cr_beeninbattle=4..}] run scoreboard players set @s acttimer 1180

execute if entity @s[scores={acttimer=1200}] run clear @a
execute if entity @s[scores={acttimer=1200}] run kill @e[type=item]
execute if entity @s[scores={acttimer=1200}] run title @a actionbar {"text":""}
execute if entity @s[scores={acttimer=1200}] run effect give @a[team=p] invisibility 1 0 true
execute if entity @s[scores={acttimer=1200}] run tp @a -51 27 108

execute if entity @s[scores={acttimer=1220}] run effect clear @a
execute if entity @s[scores={acttimer=1220}] run effect give @a[team=p] instant_health 1 100 true
execute if entity @s[scores={acttimer=1220}] run tp @a -43 31 97 0 0
execute if entity @s[scores={acttimer=1220}] unless entity @a[tag=hadbow] run tag @r[team=p] add hadbow
execute if entity @s[scores={acttimer=1220}] run item replace entity @r[tag=hadbow] weapon.mainhand with arrow{display:{Name:'{"text":"Arrow","italic":false}'}} 1
execute if entity @s[scores={acttimer=1220}] run give @r[tag=hadbow] bow{display:{Name:'{"text":"Flame Hurricane Bow","color":"gold","italic":false}',Lore:['[{"text":"Base Attack Damage: ","color":"gray","italic":false},{"text":"+7.5","color":"red"}]','{"text":" "}','{"text":"Power V","color":"blue","italic":false}','[{"text":"Increases damage by ","color":"gray","italic":false},{"text":"+25%","color":"red","italic":false},{"text":" and"}]','[{"text":"+25%","color":"red","italic":false},{"text":" damage per enchantment level.","color":"gray"}]','{"text":" "}','{"text":"Flame X","color":"blue","italic":false}','[{"text":"Deals ","color":"gray","italic":false},{"text":"1","color":"gold"},{"text":" fire damage per second"}]','[{"text":"for ","color":"gray","italic":false},{"text":"5s","color":"yellow"},{"text":" for every enchantment level."}]','[{"text":"Can also be used to ","color":"gray","italic":false},{"text":"ignite blocks","color":"gold"}]','{"text":"from a distance.","color":"gray","italic":false}','{"text":" "}','{"text":"Infinity","color":"blue","italic":false}','{"text":"The bow can shoot infinitely as long","color":"gray","italic":false}','{"text":"as there is 1 arrow in your inventory.","color":"gray","italic":false}']},HideFlags:5,Unbreakable:1b,CustomModelData:1,flamebow:1b,Enchantments:[{id:"minecraft:flame",lvl:1},{id:"minecraft:infinity",lvl:1}]}
execute if entity @s[scores={acttimer=1220}] run setblock -18 32 79 birch_button[face=floor,facing=east]
execute if entity @s[scores={acttimer=1220}] run tag @a remove clashplayer
execute if entity @s[scores={acttimer=1220}] run tag @a remove armoredup
execute if entity @s[scores={acttimer=1220}] run tag @a remove cannonfire
execute if entity @s[scores={acttimer=1220}] run scoreboard players set @s actpart 3
execute if entity @s[scores={acttimer=1220,cr_beeninbattle=..3}] run scoreboard players set @s cr_beeninbattle 4
execute if entity @s[scores={acttimer=1220}] run scoreboard players set @s dialoguetime 0
execute if entity @s[scores={acttimer=1220}] run scoreboard players set @s dialogueseq 0
execute if entity @s[scores={acttimer=1220}] run scoreboard players set @s acttimer 0