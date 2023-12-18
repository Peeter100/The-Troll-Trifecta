scoreboard players add @s dialoguetime 1

execute if score @s dialoguetime matches 100 at @e[type=item,nbt={Item:{tag:{tntitem:1b}}},limit=1] run playsound custom.act2.beep master @a ~ ~ ~ 1000 1
execute if score @s dialoguetime matches 110 at @e[type=item,nbt={Item:{tag:{tntitem:1b}}},limit=1] run playsound custom.act2.beep master @a ~ ~ ~ 1000 1
execute if score @s dialoguetime matches 120 at @e[type=item,nbt={Item:{tag:{tntitem:1b}}},limit=1] run playsound custom.act2.beep master @a ~ ~ ~ 1000 1.001
execute if score @s dialoguetime matches 125 at @e[type=item,nbt={Item:{tag:{tntitem:1b}}},limit=1] run playsound custom.act2.beep master @a ~ ~ ~ 1000 1.002
execute if score @s dialoguetime matches 130 at @e[type=item,nbt={Item:{tag:{tntitem:1b}}},limit=1] run playsound custom.act2.beep master @a ~ ~ ~ 1000 1.004
execute if score @s dialoguetime matches 134 at @e[type=item,nbt={Item:{tag:{tntitem:1b}}},limit=1] run playsound custom.act2.beep master @a ~ ~ ~ 1000 1.006
execute if score @s dialoguetime matches 137 at @e[type=item,nbt={Item:{tag:{tntitem:1b}}},limit=1] run playsound custom.act2.beep master @a ~ ~ ~ 1000 1.009

execute if score @s dialoguetime matches 100 at @e[type=item,nbt={Item:{tag:{tntitem:1b}}},limit=1] run particle dust 1 0 0 1 ~ ~.5 ~ 0 0 0 0 5 force @a
execute if score @s dialoguetime matches 110 at @e[type=item,nbt={Item:{tag:{tntitem:1b}}},limit=1] run particle dust 1 0 0 1 ~ ~.5 ~ 0 0 0 0 5 force @a
execute if score @s dialoguetime matches 120 at @e[type=item,nbt={Item:{tag:{tntitem:1b}}},limit=1] run particle dust 1 0 0 1 ~ ~.5 ~ 0 0 0 0 5 force @a
execute if score @s dialoguetime matches 125 at @e[type=item,nbt={Item:{tag:{tntitem:1b}}},limit=1] run particle dust 1 0 0 1 ~ ~.5 ~ 0 0 0 0 5 force @a
execute if score @s dialoguetime matches 130 at @e[type=item,nbt={Item:{tag:{tntitem:1b}}},limit=1] run particle dust 1 0 0 1 ~ ~.5 ~ 0 0 0 0 5 force @a
execute if score @s dialoguetime matches 134 at @e[type=item,nbt={Item:{tag:{tntitem:1b}}},limit=1] run particle dust 1 0 0 1 ~ ~.5 ~ 0 0 0 0 5 force @a
execute if score @s dialoguetime matches 137 at @e[type=item,nbt={Item:{tag:{tntitem:1b}}},limit=1] run particle dust 1 0 0 1 ~ ~.5 ~ 0 0 0 0 5 force @a

execute if score @s dialoguetime matches 140 as @e[type=item,nbt={Item:{tag:{tntitem:1b}}},limit=1] at @s run function ttt:act2/afterclash/tnt_tick_ground_explode

#execute if score @s dialoguetime matches 140 at @e[type=item,nbt={Item:{tag:{tntitem:1b}}},limit=1] run particle explosion_emitter ~ ~ ~ 0 0 0 0 10 force @a
#execute if score @s dialoguetime matches 140 at @e[type=item,nbt={Item:{tag:{tntitem:1b}}},limit=1] run playsound entity.generic.explode master @a ~ ~ ~ 1000 1
#execute if score @s dialoguetime matches 140 at @e[type=item,nbt={Item:{tag:{tntitem:1b}}},limit=1] run kill @e[tag=villshop,distance=0..8]
#execute if score @s dialoguetime matches 140 at @e[type=item,nbt={Item:{tag:{tntitem:1b}}},limit=1] run execute as @p[team=p,distance=0..3] at @s run function ttt:act2/tnt_die
#execute if score @s dialoguetime matches 140 at @e[type=item,nbt={Item:{tag:{tntitem:1b}}},limit=1] unless entity @a[scores={deathreason=23}] run execute as @p[team=p,distance=0..6,scores={hp=..14}] at @s run function ttt:act2/tnt_die
#execute if score @s dialoguetime matches 140 at @e[type=item,nbt={Item:{tag:{tntitem:1b}}},limit=1] unless entity @a[scores={deathreason=23}] run execute as @a[team=p,distance=0..6] at @s run effect give @s instant_damage 1 1 true
#execute if score @s dialoguetime matches 140 at @e[type=item,nbt={Item:{tag:{tntitem:1b}}},limit=1] unless entity @a[scores={deathreason=23}] run execute as @p[team=p,distance=0..8,scores={hp=..7}] at @s run function ttt:act2/tnt_die
#execute if score @s dialoguetime matches 140 at @e[type=item,nbt={Item:{tag:{tntitem:1b}}},limit=1] unless entity @a[scores={deathreason=23}] run execute as @a[team=p,distance=0..8] at @s run effect give @s instant_damage 1 0 true
#execute if score @s dialoguetime matches 140 at @e[type=item,nbt={Item:{tag:{tntitem:1b}}},limit=1] run kill @s