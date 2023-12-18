# am_gamescore1 == amount of peashooters on left side (must be 2-3)
# am_gamescore2 == amount of peashooters on right side (must be 2-3)
# am_gamescore3 == amount of armor stand blockades

effect give @a[scores={food=..7}] saturation 1 0 true
fill 31 34 141 30 34 141 oak_fence_gate[open=false] replace oak_fence_gate[open=true]
scoreboard players add @s[scores={am_gametimer=..9998}] am_gametimer 1

execute as @p[tag=amplayer,scores={z=..129}] at @s run function ttt:amogus/minigames/id7/smell

execute if score @s am_gametimer matches 11 at @e[type=armor_stand,tag=toad,limit=1] run playsound custom.act1.toad master @a ~ ~ ~ 1000
execute if score @s am_gametimer matches 11 run tellraw @a [{"text":"<","color":"white"},{"text":"Toad","color":"red"},{"text":"> "},{"text":"The zombies are coming!","color":"red"}]
execute if score @s am_gametimer matches 60 at @e[type=armor_stand,tag=toad,limit=1] run playsound custom.act1.toad master @a ~ ~ ~ 1000
execute if score @s am_gametimer matches 60 run tellraw @a [{"text":"<","color":"white"},{"text":"Toad","color":"red"},{"text":"> "},{"text":"They already took over my farm!","color":"red"}]
execute if score @s am_gametimer matches 120 at @e[type=armor_stand,tag=toad,limit=1] run playsound custom.act1.toad master @a ~ ~ ~ 1000
execute if score @s am_gametimer matches 120 run tellraw @a [{"text":"<","color":"white"},{"text":"Toad","color":"red"},{"text":"> "},{"text":"We need to setup a defense!","color":"red"}]
execute if score @s am_gametimer matches 180 at @e[type=armor_stand,tag=toad,limit=1] run playsound custom.act1.toad master @a ~ ~ ~ 1000
execute if score @s am_gametimer matches 180 run tellraw @a [{"text":"<","color":"white"},{"text":"Toad","color":"red"},{"text":"> "},{"text":"Take these plants and plant them in the flower pots!","color":"red"}]
execute if score @s am_gametimer matches 180 run give @a[tag=amplayer] azure_bluet{display:{Name:'[{"text":"Sunflower","color":"white","italic":false},{"text":" (Sun Producer)","color":"gray","italic":true}]',Lore:['{"text":"Produces more sun,","color":"gray","italic":false}','{"text":"which allows you to","color":"gray","italic":false}','{"text":"plant more and faster.","color":"gray","italic":false}']}} 5
execute if score @s am_gametimer matches 180 run give @a[tag=amplayer] white_tulip{display:{Name:'[{"text":"Peashooter","color":"white","italic":false},{"text":" (Attacker)","color":"gray","italic":true}]',Lore:['{"text":"Shoots peas at","color":"gray","italic":false}','{"text":"the zombies.","color":"gray","italic":false}']}} 5
execute if score @s am_gametimer matches 200 run tellraw @a [{"text":""},{"text":"Current Task:\n","color":"yellow","bold":true},{"text":"Make a defense using plants!","color":"light_purple"},{"text":"\nJumping & Sprinting: ","color":"yellow","italic":true},{"text":"Enabled","color":"green","italic":true}]
execute if score @s am_gametimer matches 200 at @r[tag=amplayer] run playsound entity.player.levelup master @a ~ ~ ~ 1000

execute positioned 42 34 135 unless block ~ ~ ~ flower_pot unless entity @e[tag=plantblocker,distance=0..1] run function ttt:amogus/minigames/id7/place_plant_left
execute positioned 40 34 135 unless block ~ ~ ~ flower_pot unless entity @e[tag=plantblocker,distance=0..1] run function ttt:amogus/minigames/id7/place_plant_left
execute positioned 38 34 135 unless block ~ ~ ~ flower_pot unless entity @e[tag=plantblocker,distance=0..1] run function ttt:amogus/minigames/id7/place_plant_left
execute positioned 36 34 135 unless block ~ ~ ~ flower_pot unless entity @e[tag=plantblocker,distance=0..1] run function ttt:amogus/minigames/id7/place_plant_left
execute positioned 34 34 135 unless block ~ ~ ~ flower_pot unless entity @e[tag=plantblocker,distance=0..1] run function ttt:amogus/minigames/id7/place_plant_left

execute positioned 42 34 133 unless block ~ ~ ~ flower_pot unless entity @e[tag=plantblocker,distance=0..1] run function ttt:amogus/minigames/id7/place_plant_right
execute positioned 40 34 133 unless block ~ ~ ~ flower_pot unless entity @e[tag=plantblocker,distance=0..1] run function ttt:amogus/minigames/id7/place_plant_right
execute positioned 38 34 133 unless block ~ ~ ~ flower_pot unless entity @e[tag=plantblocker,distance=0..1] run function ttt:amogus/minigames/id7/place_plant_right
execute positioned 36 34 133 unless block ~ ~ ~ flower_pot unless entity @e[tag=plantblocker,distance=0..1] run function ttt:amogus/minigames/id7/place_plant_right
execute positioned 34 34 133 unless block ~ ~ ~ flower_pot unless entity @e[tag=plantblocker,distance=0..1] run function ttt:amogus/minigames/id7/place_plant_right

execute if score @s am_gametimer matches 295 run scoreboard players set @s am_gametimer 250
execute if entity @s[scores={am_gametimer=..299,am_gamescore1=0..1,am_gamescore3=10}] run scoreboard players set @s am_gametimer 300
execute if entity @s[scores={am_gametimer=..299,am_gamescore2=0..1,am_gamescore3=10}] run scoreboard players set @s am_gametimer 500
execute if entity @s[scores={am_gametimer=..299,am_gamescore1=2..3,am_gamescore2=2..3,am_gamescore3=10}] run scoreboard players set @s am_gametimer 800

execute if score @s am_gametimer matches 310 at @e[type=armor_stand,tag=shadow,limit=1] run playsound custom.t2s.shadow.pvz_bad master @a ~ ~ ~ 1000
execute if score @s am_gametimer matches 310 run tellraw @a [{"text":"<","color":"white"},{"text":"Shadow","color":"#C42626"},{"text":"> "},{"text":"Why would you put the attackers in the front?!","color":"#C42626"}]
execute if score @s am_gametimer matches 321 run item replace entity @e[tag=shadowbody,limit=1] weapon.offhand with gold_ingot{CustomModelData:18}
execute if score @s am_gametimer matches 356 run tellraw @a [{"text":"<","color":"white"},{"text":"Shadow","color":"#C42626"},{"text":"> "},{"text":"It's more affordable to lose sunflowers because they don't help much!","color":"#C42626"}]
execute if score @s am_gametimer matches 442 run function ttt:amogus/minigames/id7/shadow_shoot

execute if score @s am_gametimer matches 510 at @e[type=armor_stand,tag=toad,limit=1] run playsound custom.act1.toad master @a ~ ~ ~ 1000
execute if score @s am_gametimer matches 510 run tellraw @a [{"text":"<","color":"white"},{"text":"Toad","color":"red"},{"text":"> "},{"text":"This just looks wrong!","color":"red"}]
execute if score @s am_gametimer matches 560 at @e[type=armor_stand,tag=toad,limit=1] run playsound custom.act1.toad master @a ~ ~ ~ 1000
execute if score @s am_gametimer matches 560 run tellraw @a [{"text":"<","color":"white"},{"text":"Toad","color":"red"},{"text":"> "},{"text":"If you're already at a bad point where the zombies get close enough to eat your plants...","color":"red"}]
execute if score @s am_gametimer matches 650 at @e[type=armor_stand,tag=toad,limit=1] run playsound custom.act1.toad master @a ~ ~ ~ 1000
execute if score @s am_gametimer matches 650 run tellraw @a [{"text":"<","color":"white"},{"text":"Toad","color":"red"},{"text":"> "},{"text":"You don't want to lose the plants that will help you rebuild your defense!","color":"red"}]
execute if score @s am_gametimer matches 740 as @p[tag=amplayer] at @s run function ttt:act1/mario/toad_item_steal

execute if score @s am_gametimer matches 810 at @e[type=armor_stand,tag=toad,limit=1] run playsound custom.act1.toad master @a ~ ~ ~ 1000
execute if score @s am_gametimer matches 810 run tellraw @a [{"text":"<","color":"white"},{"text":"Toad","color":"red"},{"text":"> "},{"text":"I like it!","color":"red"}]
execute if score @s am_gametimer matches 840 at @e[type=armor_stand,tag=shadow,limit=1] run playsound custom.t2s.shadow.pvz_ok master @a ~ ~ ~ 1000
execute if score @s am_gametimer matches 840 run data merge entity @e[type=armor_stand,tag=shadowbody,limit=1] {HandItems:[{id:"minecraft:gold_ingot",Count:1b,tag:{CustomModelData:91}},{id:"minecraft:gold_ingot",Count:1b,tag:{CustomModelData:92}}]}
execute if score @s am_gametimer matches 840 run tellraw @a [{"text":"<","color":"white"},{"text":"Shadow","color":"#C42626"},{"text":"> "},{"text":"Hmph.","color":"#C42626"}]
execute if score @s am_gametimer matches 852 run tellraw @a [{"text":"<","color":"white"},{"text":"Shadow","color":"#C42626"},{"text":"> "},{"text":"It's no use to shoot you!","color":"#C42626"}]
execute if score @s am_gametimer matches 888 run tellraw @a [{"text":"<","color":"white"},{"text":"Shadow","color":"#C42626"},{"text":"> "},{"text":"I need to conserve my bullets!","color":"#C42626"}]
execute if score @s am_gametimer matches 928 run function ttt:amogus/minigames/id7/task_complete

execute as @e[type=armor_stand,tag=tpnpc] at @s anchored eyes run tp @s ~ ~ ~ facing entity @p[tag=amplayer] eyes
execute as @e[type=armor_stand,tag=tpnpc,tag=toad] run function ttt:update_head_pose
execute as @e[type=armor_stand,tag=tpnpc,tag=shadow] run function ttt:finale/npc_look_shadow
scoreboard players add @e[type=armor_stand,tag=tpnpchead] npcbodytp 1
execute as @e[type=armor_stand,tag=tpnpchead,scores={npcbodytp=10..}] at @s run tp @e[type=armor_stand,tag=tpnpcbody,distance=0..0.25] @s
scoreboard players set @e[type=armor_stand,tag=tpnpchead,scores={npcbodytp=10..}] npcbodytp 0