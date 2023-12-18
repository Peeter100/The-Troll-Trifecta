playsound custom.act3.angry_birds.launch master @a ~ ~ ~ 1000

tag @s add spitbird
execute anchored eyes run summon armor_stand ^ ^ ^-0.2 {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,Tags:["forkill","bird"],Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},DisabledSlots:4144959,HandItems:[{id:"minecraft:chain",Count:1b,tag:{CustomModelData:74}},{}]}
execute as @e[tag=bird,tag=!ready] at @s run tp @s ~ ~ ~ facing entity @p[tag=spitbird] eyes
tag @e[tag=bird,tag=!ready] add ready
tag @s remove spitbird

clear @a carrot_on_a_stick{bird:1b}
kill @e[type=item,nbt={Item:{tag:{bird:1b}}}]

scoreboard players set @e[tag=sv] dialoguetime 0
scoreboard players set @e[tag=sv] dialogueseq 2