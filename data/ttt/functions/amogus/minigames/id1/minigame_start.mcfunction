execute as @e[tag=tpitem1] at @s run summon item ~ ~ ~ {NoGravity:1b,Age:-32768,Invulnerable:1b,Tags:["forkill","amogtask","artifact"],Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Unknown Key","color":"white","italic":false}'},HideFlags:98,CustomModelData:4,backroom:1b,artifact:1b}}}
execute as @e[tag=tpitem2] at @s run summon item ~ ~ ~ {NoGravity:1b,Age:-32768,Invulnerable:1b,Tags:["forkill","amogtask","artifact"],Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Mythical Emerald","color":"white","italic":false}'},HideFlags:98,CustomModelData:40,backroom:1b,artifact:2b}}}
execute as @e[tag=tpitem3] at @s run summon item ~ ~ ~ {NoGravity:1b,Age:-32768,Invulnerable:1b,Tags:["forkill","amogtask","artifact"],Item:{id:"minecraft:globe_banner_pattern",Count:1b,tag:{display:{Name:'{"text":"Survivor Diary #8","color":"white","italic":false}'},HideFlags:98,backroom:1b,artifact:3b}}}
execute as @e[tag=tptrollge] at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,PersistenceRequired:1b,Tags:["forkill","amogtask","trollgevis","trollgefeet","trollgeent"],Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},DisabledSlots:4144959}
execute as @e[tag=tptrollge] at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,PersistenceRequired:1b,Tags:["forkill","amogtask","trollgevis","trollgearm","trollgeent"],Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},DisabledSlots:4144959}
execute as @e[tag=tptrollge] at @s run summon zombie_villager ~ ~ ~ {ActiveEffects:[{Id:14,Amplifier:0b,Duration:999999,ShowParticles:0b}],Silent:1b,PersistenceRequired:1b,Invulnerable:1b,Invisible:1b,Health:100f,Tags:["forkill","amogtask","trollgeai","trollgeent"],Attributes:[{Name:generic.max_health,Base:100},{Name:generic.knockback_resistance,Base:1},{Name:generic.movement_speed,Base:0.4},{Name:generic.attack_damage,Base:0}],VillagerData:{profession:"minecraft:nitwit",type:"minecraft:desert"},Offers:{}}
# type: desert
tp @e[tag=viewcaster] @e[tag=tpplayer,limit=1]
tp @a @e[tag=tpplayer,limit=1]
kill @e[tag=id1spawner]
scoreboard players set @s am_gamescore2 400
scoreboard players set @s[scores={am_seentrollge=2..}] am_seentrollge 1
tellraw @a [{"text":""},{"text":"Current Task:\n","color":"yellow","bold":true},{"text":"Extract 3 artifacts from the backrooms!","color":"light_purple"},{"text":"\nJumping & Sprinting: ","color":"yellow","italic":true},{"text":"Enabled","color":"green","italic":true}]
bossbar set minecraft:noisebar visible true
effect clear @a[tag=amplayer] invisibility
item replace entity @a[tag=amplayer] weapon.offhand with barrier{display:{Name:'{"text":"YOUR DISGUISE FOOLS NOONE","color":"#942626","font":"trollge","italic":false}'},lockedgus:1b,impostorsuit:1b} 1
execute if score @s am_seentrollge matches 1 run schedule function ttt:amogus/minigames/id1/start_tip 40t replace