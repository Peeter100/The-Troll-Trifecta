# act = 1..2
# actpart = ...

summon armor_stand 0 30.0 39 {NoGravity:1b,CustomNameVisible:0b,Silent:1b,Invulnerable:1b,ShowArms:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["p100play","forkill"],Pose:{LeftArm:[346f,0f,352f],RightArm:[326f,18f,0f],LeftLeg:[6f,0f,0f],RightLeg:[350f,0f,0f]},DisabledSlots:4144703,HandItems:[{id:"minecraft:stone_axe",Count:1b,tag:{CanDestroy:["minecraft:oak_log"],display:{Name:'{"text":"Stone Axe","italic":false}',Lore:['[{"text":"Can break ","color":"gray","italic":false},{"text":"oak logs","color":"yellow"},{"text":"."}]','[{"text":"Also good for ","color":"gray","italic":false},{"text":"other","color":"red","italic":true},{"text":" reasons."}]']},HideFlags:46,Unbreakable:1b,axe:1b}},{id:'minecraft:shield',Count:1b,tag:{BlockEntityTag:{Patterns:[{Color:15,Pattern:'bri'},{Color:14,Pattern:'gru'},{Color:4,Pattern:'cre'}]}}}],ArmorItems:[{id:'minecraft:leather_boots',Count:1b,tag:{display:{color:3348480}}},{id:'minecraft:leather_leggings',Count:1b,tag:{display:{color:1510144}}},{id:'minecraft:leather_chestplate',Count:1b,tag:{display:{color:3348480}}},{id:'minecraft:player_head',Count:1b,tag:{SkullOwner:'Peeter100'}}],CustomName:'[{"text":"Created by ","color":"white","italic":false},{"text":"Peeter100","color":"red","bold":true,"underlined":true}]'}
summon falling_block 30 31 54 {BlockState:{Name:"minecraft:cobblestone"},NoGravity:1b,Time:-2147483647,Tags:["forkill"]}
data merge block -13 35 77 {LootTable:"ttt:blocks/act1/papers"}
data merge block -12 35 77 {LootTable:"ttt:blocks/act1/papers"}
data merge block -12 30 81 {LootTable:"ttt:blocks/act1/credits"}
data merge block -13 30 81 {LootTable:"ttt:blocks/act1/credits"}
data merge block 15 31 75 {LootTable:"ttt:blocks/act1/food"}
data merge block 14 31 75 {LootTable:"ttt:blocks/act1/food"}
setblock -3 29 132 moss_carpet
fill 4 31 92 -16 33 92 barrier
fill 4 31 91 4 33 91 barrier
fill 3 36 113 3 31 113 barrier
setblock 5 27 115 grass_block
fill -11 30 158 5 33 158 barrier

setblock -18 31 79 tnt
setblock -18 32 79 birch_button[face=floor,facing=east]
fill -17 32 78 -17 31 80 white_terracotta

execute if score @s fnf_usedchest matches 1.. run setblock 0 31 48 oak_wall_sign[facing=north]{Color:"black",Text1:'{"text":"If the chest"}',Text2:'{"text":"stops working,"}',Text3:'{"text":"try relogging."}',Text4:'{"text":"(Minecraft bug)","italic":true}'}

fill -15 31 82 -13 31 82 glass
fill -11 36 80 -11 36 78 glass