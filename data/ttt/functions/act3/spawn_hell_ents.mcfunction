execute if entity @s[scores={am_rickinteract=..-1}] run scoreboard players set @s am_rickinteract 1
execute if entity @s[scores={am_rickinteract=2..}] run scoreboard players set @s am_rickinteract 0

kill @e[type=item]
kill @e[tag=forkill]

execute if score @s am_rickinteract matches 0 run function ttt:reset/act3_spawn_rickseq_off
execute if score @s am_rickinteract matches 1 run function ttt:reset/act3_spawn_rickseq_on


# basic entites
summon blaze 18 16 180 {NoGravity:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Tags:["forkill","blazeprot","globalhide"],Rotation:[90F,0F]}
summon piglin 0 12 152 {NoAI:0b,NoGravity:1b,Invulnerable:1b,Team:"p",PersistenceRequired:1b,IsBaby:0b,IsImmuneToZombification:1b,CannotHunt:1b,Tags:["forkill","piglinent","namednpc","prophet"],CustomName:'{"text":"Piglin Prophet","color":"#FFA159","italic":false}',HandItems:[{id:"minecraft:golden_sword",Count:1b},{}],ArmorItems:[{id:"minecraft:golden_boots",Count:1b},{},{id:"minecraft:golden_chestplate",Count:1b},{}],Attributes:[{Name:generic.movement_speed,Base:0},{Name:generic.attack_damage,Base:0}]}
summon piglin -2 12 151 {NoGravity:1b,Invulnerable:1b,Team:"p",PersistenceRequired:1b,IsBaby:0b,IsImmuneToZombification:1b,CannotHunt:1b,Tags:["forkill","globalhide"],HandItems:[{id:"minecraft:crossbow",Count:1b,tag:{ChargedProjectiles:[{id:"minecraft:arrow",Count:1b},{},{}],Charged:1b}},{}],Attributes:[{Name:generic.movement_speed,Base:0},{Name:generic.attack_damage,Base:0}]}
summon piglin 1 12 150 {NoGravity:1b,Invulnerable:1b,Team:"p",PersistenceRequired:1b,IsBaby:0b,IsImmuneToZombification:1b,CannotHunt:1b,Tags:["forkill","globalhide"],Attributes:[{Name:generic.movement_speed,Base:0},{Name:generic.attack_damage,Base:0}]}
summon piglin 2 12 151 {NoGravity:1b,Invulnerable:1b,Team:"p",PersistenceRequired:1b,IsBaby:1b,IsImmuneToZombification:1b,CannotHunt:1b,Tags:["forkill","globalhide"],Attributes:[{Name:generic.movement_speed,Base:0},{Name:generic.attack_damage,Base:0}]}

# gold chest corridor
fill 13 15 215 1 15 213 air
data merge block 23 16 170 {Items:[{Slot:13b,id:"minecraft:gold_block",Count:1b,tag:{display:{Name:'{"text":"Reinforced Block of Gold","color":"yellow","italic":false}',Lore:['[{"text":"Requires a ","color":"gray","italic":false},{"text":"heavy force","color":"gold"}]','[{"text":"to break up into ","color":"gray","italic":false},{"text":"Gold Ingots","color":"yellow"},{"text":"."}]']},hoglingold:1b}}]}
fill 26 17 193 26 17 197 barrier
fill 26 16 194 26 16 196 air

# button
fill -4 29 262 -2 29 260 netherrack
setblock -3 30 261 gold_block
setblock -3 31 261 stone_button[face=floor,facing=south,powered=false]
setblock -3 30 260 birch_wall_sign{Color:"yellow",GlowingText:1b,Text1:'{"text":"===============","color":"yellow"}',Text2:'{"text":"FINISH THE MAP","color":"yellow"}',Text3:'{"text":"===============","color":"yellow"}'}
setblock -2 31 255 air
setblock -3 31 256 air
setblock -4 31 255 air
setblock -3 31 254 air
setblock -3 32 255 air

# crack bridge
fill -5 29 218 -1 29 224 minecraft:cracked_nether_bricks replace air
setblock -5 29 225 minecraft:cracked_nether_bricks
setblock -5 29 250 minecraft:cracked_nether_bricks
fill -1 29 248 -2 29 247 minecraft:cracked_nether_bricks replace air
setblock -5 29 246 minecraft:cracked_nether_bricks

# anvilll
data merge block -3 28 268 {Items:[{Slot:13b,id:"minecraft:iron_pickaxe",Count:1b,tag:{CanDestroy:["minecraft:cracked_nether_bricks"],display:{Name:'{"text":"Iron Pickaxe","color":"white","italic":false}',Lore:['[{"text":"Can break ","color":"gray","italic":false},{"text":"cracked nether bricks","color":"red"},{"text":"."}]']},HideFlags:15,Unbreakable:1b}}]}
fill 3 30 230 -9 35 242 air

# walter
execute if entity @s[scores={am_seentrollge=0}] run summon armor_stand -21 25 219 {Rotation:[180F,0F],Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},NoGravity:1b,Invulnerable:1b,ShowArms:0b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["forkill","walterbody"],DisabledSlots:4144959,HandItems:[{id:"minecraft:chain",Count:1b,tag:{CustomModelData:79}},{}]}
execute if entity @s[scores={am_seentrollge=0}] run summon armor_stand -21 25 219 {Rotation:[180F,0F],Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},NoGravity:1b,Invulnerable:1b,ShowArms:0b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["forkill","walterhead","namednpc"],CustomName:'{"text":"Walter White","color":"#FFA159","italic":false}',CustomNameVisible:0b,DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:chain",Count:1b,tag:{CustomModelData:80}}]}

# ?????
fill -19 26 216 -19 26 218 air
execute if entity @s[scores={playercount=1}] run data merge block -33 13 210 {Items:[{Slot:13b,id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Sonic\'s Secret Ring","color":"yellow","italic":false}',Lore:['{"text":"Spam right-click to dash","color":"gray","italic":false}','[{"text":"forward using a ","color":"gray","italic":false},{"text":"spindash","color":"aqua"},{"text":"."}]','{"text":"Action can only be performed","color":"gray","italic":false}','{"text":"while standing on the ground.","color":"gray","italic":false}']},CustomModelData:9,ring:1b}}]}
execute if entity @s[scores={playercount=2}] run data merge block -33 13 210 {Items:[{Slot:12b,id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Sonic\'s Secret Ring","color":"yellow","italic":false}',Lore:['{"text":"Spam right-click to dash","color":"gray","italic":false}','[{"text":"forward using a ","color":"gray","italic":false},{"text":"spindash","color":"aqua"},{"text":"."}]','{"text":"Action can only be performed","color":"gray","italic":false}','{"text":"while standing on the ground.","color":"gray","italic":false}']},CustomModelData:9,ring:1b}},{Slot:14b,id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Sonic\'s Secret Ring","color":"yellow","italic":false}',Lore:['{"text":"Spam right-click to dash","color":"gray","italic":false}','[{"text":"forward using a ","color":"gray","italic":false},{"text":"spindash","color":"aqua"},{"text":"."}]','{"text":"Action can only be performed","color":"gray","italic":false}','{"text":"while standing on the ground.","color":"gray","italic":false}']},CustomModelData:9,ring:1b}}]}
execute if entity @s[scores={playercount=3..}] run data merge block -33 13 210 {Items:[{Slot:11b,id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Sonic\'s Secret Ring","color":"yellow","italic":false}',Lore:['{"text":"Spam right-click to dash","color":"gray","italic":false}','[{"text":"forward using a ","color":"gray","italic":false},{"text":"spindash","color":"aqua"},{"text":"."}]','{"text":"Action can only be performed","color":"gray","italic":false}','{"text":"while standing on the ground.","color":"gray","italic":false}']},CustomModelData:9,ring:1b}},{Slot:13b,id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Sonic\'s Secret Ring","color":"yellow","italic":false}',Lore:['{"text":"Spam right-click to dash","color":"gray","italic":false}','[{"text":"forward using a ","color":"gray","italic":false},{"text":"spindash","color":"aqua"},{"text":"."}]','{"text":"Action can only be performed","color":"gray","italic":false}','{"text":"while standing on the ground.","color":"gray","italic":false}']},CustomModelData:9,ring:1b}},{Slot:15b,id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Sonic\'s Secret Ring","color":"yellow","italic":false}',Lore:['{"text":"Spam right-click to dash","color":"gray","italic":false}','[{"text":"forward using a ","color":"gray","italic":false},{"text":"spindash","color":"aqua"},{"text":"."}]','{"text":"Action can only be performed","color":"gray","italic":false}','{"text":"while standing on the ground.","color":"gray","italic":false}']},CustomModelData:9,ring:1b}}]}

# idk
execute if entity @s[scores={am_seentrollge=0}] run fill -21 25 219 -21 26 219 barrier
execute if entity @s[scores={am_seentrollge=1..}] run fill -21 25 219 -21 26 219 air

# fix zaza door
clone -5 30 206 -1 34 206 -5 45 206