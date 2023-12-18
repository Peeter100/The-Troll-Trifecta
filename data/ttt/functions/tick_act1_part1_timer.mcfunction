execute if entity @s[scores={acttimer=7}] run particle minecraft:explosion 24 28 38 .6 .5 .6 0 20 force @a
execute if entity @s[scores={acttimer=7..8}] run particle block dripstone_block 24 28 38 .4 .2 .4 0 100 force @a
execute if entity @s[scores={acttimer=7}] run playsound minecraft:block.pointed_dripstone.land master @a 24 28 38
execute if entity @s[scores={acttimer=5..8}] run scoreboard players set @a[x=23,y=27,z=37,dx=2,dy=2,dz=2,team=p,nbt={OnGround:1b}] deathreason 5
execute if entity @s[scores={acttimer=5..8}] run kill @a[x=23,y=27,z=37,dx=2,dy=2,dz=2,team=p,nbt={OnGround:1b}]
execute if entity @s[scores={acttimer=2..8}] run effect give @a[x=23,y=27,z=37,dx=2,dy=2,dz=2,team=p,nbt={OnGround:1b}] jump_boost 1 200 true
execute if entity @s[scores={acttimer=8}] run scoreboard players set @s acttimer 0

execute if entity @s[scores={acttimer=11..19}] if block 0 30 49 oak_log run summon item 0 30 49 {Health:10000,Motion:[0.0,0.2,0.0],Tags:["forkill"],Item:{id:"minecraft:oak_log",Count:1b}}
execute if entity @s[scores={acttimer=11..19}] if block 0 30 49 oak_log run setblock 0 30 49 air destroy
execute if entity @s[scores={acttimer=13..19}] if block 0 31 49 oak_log run summon item 0 31 49 {Health:10000,Motion:[0.0,0.2,0.0],Tags:["forkill"],Item:{id:"minecraft:oak_log",Count:1b}}
execute if entity @s[scores={acttimer=13..19}] if block 0 31 49 oak_log run setblock 0 31 49 air destroy
execute if entity @s[scores={acttimer=15..19}] if block 0 32 49 oak_log run summon item 0 32 49 {Health:10000,Motion:[0.0,0.2,0.0],Tags:["forkill"],Item:{id:"minecraft:oak_log",Count:1b}}
execute if entity @s[scores={acttimer=15..19}] if block 0 32 49 oak_log run setblock 0 32 49 air destroy
execute if entity @s[scores={acttimer=17}] run summon item 0 33 49 {Health:10000,Motion:[0.0,0.2,0.0],Tags:["forkill"],Item:{id:"minecraft:oak_log",Count:1b}}
execute if entity @s[scores={acttimer=17}] run setblock 0 33 49 air destroy
execute if entity @s[scores={acttimer=19}] run summon item 0 34 49 {Health:10000,Motion:[0.0,0.2,0.0],Tags:["forkill"],Item:{id:"minecraft:oak_log",Count:1b}}
execute if entity @s[scores={acttimer=19}] run summon item 0 35 49 {Health:10000,Motion:[0.0,0.2,0.0],Tags:["forkill"],Item:{id:"minecraft:oak_log",Count:2b}}
execute if entity @s[scores={acttimer=19}] run fill 0 34 49 0 35 49 air destroy
execute if entity @s[scores={acttimer=23}] run function ttt:act1/acttimer_event1
execute if entity @s[scores={acttimer=35}] run particle explosion 0 30.2 49 1.75 0 1.75 0 80 force @a
execute if entity @s[scores={acttimer=35}] run particle block oak_leaves 0 30.2 49 1.75 0 1.75 0 100 force @a
execute if entity @s[scores={acttimer=35}] run scoreboard players set @a[x=-2,y=30,z=47,dx=4,dy=2,dz=4,team=p] deathreason 6
execute if entity @s[scores={acttimer=35}] run effect give @a[x=-2,y=30,z=47,dx=4,dy=2,dz=4,team=p] instant_damage 1 10 true
execute if entity @s[scores={acttimer=36}] run scoreboard players set @s acttimer 0

execute if entity @s[scores={acttimer=41}] run function ttt:act1/acttimer_event2
execute if entity @s[scores={acttimer=45}] as @e[tag=foodshop] at @s run kill @p[team=p]
execute if entity @s[scores={acttimer=45}] run scoreboard players set @s acttimer 0

# execute if entity @s[scores={acttimer=51}] run tag @s add dialogue
# execute if entity @s[scores={acttimer=51}] as @e[tag=npcb2] at @s run playsound custom.act1.xina.talk1 master @a ~ ~ ~ 1000
# execute if entity @s[scores={acttimer=51}] run tellraw @a [{"text":"<","color":"white"},{"text":"Granter John","color":"yellow"},{"text":"> "},{"text":"You need more Social Credit?","color":"yellow"}]
# execute if entity @s[scores={acttimer=110}] as @e[tag=npcb2] at @s run playsound custom.act1.xina.talk2 master @a ~ ~ ~ 1000
# execute if entity @s[scores={acttimer=110}] run tellraw @a [{"text":"<","color":"white"},{"text":"Granter John","color":"yellow"},{"text":"> "},{"text":"I first need to make sure you DESERVE the Social Credit.","color":"yellow"}]
# execute if entity @s[scores={acttimer=170}] as @e[tag=npcb2] at @s run playsound custom.act1.xina.talk3 master @a ~ ~ ~ 1000
# execute if entity @s[scores={acttimer=170}] run tellraw @a [{"text":"<","color":"white"},{"text":"Granter John","color":"yellow"},{"text":"> "},{"text":"So, to prove you're a good citizen, you will need to answer my questions.","color":"yellow"}]
# execute if entity @s[scores={acttimer=250}] as @e[tag=npcb2] at @s run playsound custom.act1.xina.question master @a ~ ~ ~ 1000
# execute if entity @s[scores={acttimer=250}] run scoreboard players enable @a[team=p] Answer_Q1
# execute if entity @s[scores={acttimer=250}] run tellraw @a [{"text":"","color":"yellow"},{"text":"Question 1: What happened on June 4th 1989?\n","bold":"true"},{"text":"[A protest]","color":"green","hoverEvent":{"action":"show_text","contents":[{"text":"Click to select!","color":"green"}]},"clickEvent":{"action":"run_command","value":"/trigger Answer_Q1 set 1"}},{"text":"\n"},{"text":"[Something important]","color":"green","hoverEvent":{"action":"show_text","contents":[{"text":"Click to select!","color":"green"}]},"clickEvent":{"action":"run_command","value":"/trigger Answer_Q1 set 2"}},{"text":"\n"},{"text":"[I forgor ☠]","color":"green","hoverEvent":{"action":"show_text","contents":[{"text":"Click to select!","color":"green"}]},"clickEvent":{"action":"run_command","value":"/trigger Answer_Q1 set 3"}},{"text":"\n"},{"text":"[Nothing]","color":"green","hoverEvent":{"action":"show_text","contents":[{"text":"Click to select!","color":"green"}]},"clickEvent":{"action":"run_command","value":"/trigger Answer_Q1 set 4"}}]
# execute if entity @s[scores={acttimer=250}] run scoreboard players set @s acttimer 0

execute if entity @s[scores={acttimer=299}] as @a[team=p,scores={weight=4..}] at @s run scoreboard players set @s deathreason 9
execute if entity @s[scores={acttimer=299}] as @a[team=p,scores={weight=4..}] at @s run playsound custom.act1.fard master @a ~ ~ ~ 1000
execute if entity @s[scores={acttimer=299}] as @a[team=p,scores={weight=4..}] at @s run particle dust 0 .3 0 1 ~ ~1 ~ 1 .5 1 5 250 force @a
execute if entity @s[scores={acttimer=299}] as @a[team=p,scores={weight=4..}] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["forkill","fartcloud"],Particle:"dust 0.004 0.098 0.000 1",ReapplicationDelay:10,Radius:3f,RadiusPerTick:0.05f,Duration:100,DurationOnUse:0f,Color:71936,Effects:[{Id:7b,Amplifier:0b,Duration:1,ShowParticles:0b},{Id:9b,Amplifier:255b,Duration:100,ShowParticles:0b},{Id:19b,Amplifier:9b,Duration:20,ShowParticles:0b}]}
execute if entity @s[scores={acttimer=299}] run scoreboard players set @s acttimer 0

# execute if entity @s[scores={acttimer=301}] as @a[tag=blockcause] at @s run summon armor_stand ~ 30 158 {NoGravity:1b,Invulnerable:1b,ShowArms:0b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["forkill","p100b-vis"],Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],Head:[0f,0f,0f]},DisabledSlots:4144959,Rotation:[180F,0F],HandItems:[{id:"minecraft:emerald",Count:1b,tag:{CustomModelData:9}},{id:"minecraft:emerald",Count:1b,tag:{CustomModelData:10}}]}
# execute if entity @s[scores={acttimer=301}] as @a[tag=blockcause] at @s run summon armor_stand ~ 30 158 {NoGravity:1b,Invulnerable:1b,ShowArms:0b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["forkill","p100b-head"],Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],Head:[5f,0f,0f]},DisabledSlots:4144959,Rotation:[180F,0F],ArmorItems:[{},{},{},{id:"minecraft:emerald",Count:1b,tag:{CustomModelData:3}}]}
# execute if entity @s[scores={acttimer=301}] as @a[tag=blockcause] at @s run playsound custom.act1.deny master @a ~ 30.5 158 1000
# execute if entity @s[scores={acttimer=301..561}] run function ttt:act1/p100_look
# execute if entity @s[scores={acttimer=567}] run function ttt:act1/begin_fnf

execute if entity @s[scores={acttimer=501}] run scoreboard players set @a[x=29,y=33,z=49,dx=0,dy=2,dz=0,team=p] deathreason 32
execute if entity @s[scores={acttimer=501}] run gamerule fireDamage false
execute if entity @s[scores={acttimer=501}] run gamerule fallDamage false
execute if entity @s[scores={acttimer=540}] as @r[team=p] at @s run playsound custom.act1.lag master @a ~ ~ ~ 1000
execute if entity @s[scores={acttimer=639}] unless entity @a[team=p,scores={deathreason=32}] run scoreboard players set @r[team=p] deathreason 32
execute if entity @s[scores={acttimer=639}] run tp @a[team=p,scores={deathreason=32}] 29 26 49
execute if entity @s[scores={acttimer=639}] as @a[team=p,scores={deathreason=32}] at @s run playsound minecraft:entity.player.hurt_on_fire master @s ~ ~ ~ 1000
execute if entity @s[scores={acttimer=639}] run kill @r[team=p,scores={deathreason=32}]
execute if entity @s[scores={acttimer=639}] run scoreboard players set @s acttimer 0