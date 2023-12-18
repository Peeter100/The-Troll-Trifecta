#execute if predicate ttt:50ch unless entity @e[type=item,tag=healitem,limit=1] run summon item ~ ~ ~ {Glowing:1b,Age:5860,Health:1000,PickupDelay:32767,Invulnerable:1b,Motion:[0.0,0.2,0.0],Tags:["forkill","healitem"],Item:{id:"minecraft:gold_ingot",Count:1b,tag:{CustomModelData:7}}}
#execute if predicate ttt:50ch unless entity @e[type=falling_block,tag=healcloud,limit=1] run summon falling_block ~ 16 ~ {BlockState:{Name:"minecraft:redstone_block"},NoGravity:1b,Time:430,DropItem:0b,HurtEntities:0b,Tags:["forkill","healcloud"]}
execute if predicate ttt:50ch unless entity 00000005-0000-0000-0000-000000000000 positioned ~ 16 ~ run function ttt:finale/phase1/spawn_healcloud
execute if entity 00000004-0000-0000-0000-000000000000 positioned ^ ^ ^1 run function ttt:finale/phase1/p100_mobkill_raycast
function ttt:finale/phase1/p100_anim_fire
playsound entity.generic.explode master @a ~ ~ ~ 2 2
particle explosion ~ ~1 ~ .2 .5 .2 0 5 normal @a
kill @s