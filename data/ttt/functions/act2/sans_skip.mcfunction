tp @a[team=p] -35.99 31 78 0 0
playsound entity.enderman.teleport master @a -35.99 31 78 1000
particle minecraft:reverse_portal -35.99 32 78 .2 .5 .2 0.15 100 force @a

scoreboard players set @s[scores={cr_seensans=..2}] cr_seensans 3

#effect clear @a regeneration
#effect give @a[team=p,tag=!1hpchallenge] instant_health 1 100 true
#tag @a[team=p] add 1hpchallenge
#tag @a[team=p] add noheal

#execute unless entity @a[team=p,nbt={Inventory:[{tag:{hoverwand:1b}}]}] run give @s stick{display:{Name:'{"text":"Hold-Trigger Hover Wand","color":"light_purple","italic":false}',Lore:['{"text":"While holding this wand, you will not be affected","color":"gray","italic":false}','[{"text":"by ","color":"gray","italic":false},{"text":"gravity","color":"yellow"},{"text":" as long as you have enough "},{"text":"energy","color":"light_purple"},{"text":"."}]','{"text":"Energy can be restored by standing","color":"gray","italic":false}','[{"text":"on the ground while ","color":"gray","italic":false},{"text":"NOT","color":"red"},{"text":" holding the wand."}]','{"text":" "}','{"text":"TIP: Switch to the wand immediately after","color":"red","italic":false}','{"text":"jumping to jump slightly higher!","color":"red","italic":false}']},HideFlags:3,CustomModelData:1,hoverwand:1b,Enchantments:[{}]}

execute unless entity @s[scores={securitytime=1..}] run fill -25 31 22 -37 31 22 air replace birch_planks
execute unless entity @s[scores={securitytime=1..}] run fill -25 30 22 -37 30 22 air replace birch_fence
execute unless entity @s[scores={securitytime=1..}] run scoreboard players set @s securitytime 39
kill @e[type=item]

execute if score @s cr_beeninbattle matches ..4 unless entity @a[team=p,nbt={Inventory:[{tag:{hoverwand:1b}}]}] run summon item -35.99 31 82 {Age:-32768,PickupDelay:20,Tags:["forkill"],Item:{id:"minecraft:stick",Count:1b,tag:{display:{Name:'{"text":"Hold-Trigger Hover Wand","color":"light_purple","italic":false}',Lore:['{"text":"While holding this wand, you will not be affected","color":"gray","italic":false}','[{"text":"by ","color":"gray","italic":false},{"text":"gravity","color":"yellow"},{"text":" as long as you have enough "},{"text":"energy","color":"light_purple"},{"text":"."}]','{"text":"Energy can be restored by standing","color":"gray","italic":false}','[{"text":"on the ground while ","color":"gray","italic":false},{"text":"NOT","color":"red"},{"text":" holding the wand."}]','{"text":" "}','{"text":"TIP: Switch to the wand immediately after","color":"red","italic":false}','{"text":"jumping to jump slightly higher!","color":"red","italic":false}']},HideFlags:3,CustomModelData:1,hoverwand:1b,Enchantments:[{}]}}}
execute if score @s cr_beeninbattle matches 5.. run function ttt:act2/sans_mega_skip

scoreboard players reset @a Game_Choice