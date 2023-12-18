clear @a
effect clear @a
effect give @a[team=p] instant_health 1 100 true
execute unless entity @a[tag=hadbow] run tag @r[team=p] add hadbow
item replace entity @r[tag=hadbow] weapon.mainhand with arrow{display:{Name:'{"text":"Arrow","italic":false}'}} 1
give @r[tag=hadbow] bow{display:{Name:'{"text":"Flame Hurricane Bow","color":"gold","italic":false}',Lore:['[{"text":"Base Attack Damage: ","color":"gray","italic":false},{"text":"+7.5","color":"red"}]','{"text":" "}','{"text":"Power V","color":"blue","italic":false}','[{"text":"Increases damage by ","color":"gray","italic":false},{"text":"+25%","color":"red","italic":false},{"text":" and"}]','[{"text":"+25%","color":"red","italic":false},{"text":" damage per enchantment level.","color":"gray"}]','{"text":" "}','{"text":"Flame X","color":"blue","italic":false}','[{"text":"Deals ","color":"gray","italic":false},{"text":"1","color":"gold"},{"text":" fire damage per second"}]','[{"text":"for ","color":"gray","italic":false},{"text":"5s","color":"yellow"},{"text":" for every enchantment level."}]','[{"text":"Can also be used to ","color":"gray","italic":false},{"text":"ignite blocks","color":"gold"}]','{"text":"from a distance.","color":"gray","italic":false}','{"text":" "}','{"text":"Infinity","color":"blue","italic":false}','{"text":"The bow can shoot infinitely as long","color":"gray","italic":false}','{"text":"as there is 1 arrow in your inventory.","color":"gray","italic":false}']},HideFlags:5,Unbreakable:1b,CustomModelData:1,flamebow:1b,Enchantments:[{id:"minecraft:flame",lvl:1},{id:"minecraft:infinity",lvl:1}]}
setblock -18 32 79 birch_button[face=floor,facing=east]
tag @a remove noheal
tag @a remove 1hpchallenge
tag @a remove clashplayer
tag @a remove armoredup
tag @a remove cannonfire
scoreboard players set @s actpart 3
scoreboard players set @s dialoguetime 0
scoreboard players set @s dialogueseq -1
scoreboard players set @s acttimer 800

fill -36 31 84 -37 32 84 air destroy

stopsound @a master
tellraw @a [{"text":"<"},{"text":"Sans","color":"#C4E2FF"},{"text":"> "},{"text":"there's no need to keep forcing you","color":"#C4E2FF","font":"sans"}]
execute as @r[team=p] at @s run playsound custom.act2.sans.speech_mid master @a ~ ~ ~ 1000
summon armor_stand -43 30.875 99 {CustomNameVisible:0b,NoGravity:1b,Invulnerable:1b,ShowArms:0b,Marker:0b,Invisible:1b,PersistenceRequired:1b,Tags:["sans","sansbody","forkill","namednpc"],Pose:{Body:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f],Head:[0f,0f,0f]},DisabledSlots:4144959,Rotation:[-155F,0F],HandItems:[{id:"minecraft:bone",Count:1b,tag:{CustomModelData:11}},{}],CustomName:'{"text":"Sans","color":"#C4E2FF"}'}
summon armor_stand -43 30.875 99 {CustomNameVisible:0b,NoGravity:1b,Invulnerable:1b,ShowArms:0b,Marker:0b,Invisible:1b,PersistenceRequired:1b,Tags:["sans","sanshead","forkill"],Pose:{Body:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f],Head:[0f,0f,0f]},DisabledSlots:4144959,Rotation:[-155F,0F],ArmorItems:[{},{},{},{id:"minecraft:bone",Count:1b,tag:{CustomModelData:21}}],CustomName:'{"text":"Sans","color":"#C4E2FF"}'}