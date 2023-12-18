execute if score @s dialoguetime matches 1..23 as @e[type=armor_stand,tag=tails] at @s anchored eyes run tp @s ~-0.05 ~ ~-0.25 facing entity @p[team=p,nbt={Inventory:[{tag:{hoverwand:1b}}]}] eyes
#execute if score @s dialoguetime matches 24..63 as @e[type=armor_stand,tag=tails] at @s anchored eyes run tp @s ~0.025 ~-0.25 ~-0.175 facing entity @p[team=p,nbt={Inventory:[{tag:{hoverwand:1b}}]}] eyes
execute if score @s dialoguetime matches 24..43 as @e[type=armor_stand,tag=tails] at @s anchored eyes run tp @s ~0.025 ~-0.375 ~-0.15 facing entity @p[team=p,nbt={Inventory:[{tag:{hoverwand:1b}}]}] eyes
execute if score @s dialoguetime matches 44..63 as @e[type=armor_stand,tag=tails] at @s anchored eyes run tp @s ~0.025 ~-0.125 ~-0.2 facing entity @p[team=p,nbt={Inventory:[{tag:{hoverwand:1b}}]}] eyes

# 66 -> 70
execute if score @s dialoguetime matches 70..99 unless entity @s[tag=globalmsg1] if entity @a[team=p,scores={x=-32..-30,y=29..31,z=-5..-3}] run function ttt:act2/tails_give_wand_msg
execute if score @s dialoguetime matches 70..99 at @e[type=armor_stand,tag=tailshead] positioned ~ ~1 ~ if entity @e[type=item,nbt={Item:{tag:{hoverwand:1b}}},distance=..2] run function ttt:act2/tails_give_wand
execute if score @s dialoguetime matches 70..99 as @e[type=armor_stand,tag=tailshead] at @s anchored eyes run function ttt:act2/tails_look

execute if score @s dialoguetime matches 101..120 as @e[type=armor_stand,tag=tails] at @s run tp @s ~-0.025 ~0.125 ~0.2 0 0
execute if score @s dialoguetime matches 121..140 as @e[type=armor_stand,tag=tails] at @s run tp @s ~-0.025 ~0.375 ~0.15 -2 0
execute if score @s dialoguetime matches 141..163 as @e[type=armor_stand,tag=tails] at @s run tp @s ~0.05 ~ ~0.25 -5 0
execute if score @s dialoguetime matches 164 run function ttt:act2/tails_fly_end

execute if score @s dialoguetime matches 491..510 as @e[type=armor_stand,tag=tails] at @s run tp @s ~ ~ ~-0.2 180 0
execute if score @s dialoguetime matches 513 run function ttt:act2/tails_fly_start
execute if score @s dialoguetime matches 514..523 as @e[type=armor_stand,tag=tails] at @s run tp @s ~-0.15 ~ ~-0.1 facing -32 ~ 0
execute if score @s dialoguetime matches 524..543 as @e[type=armor_stand,tag=tails] at @s run tp @s ~-0.075 ~-0.45 ~-0.05 facing -32 ~ 0


execute if score @s dialoguetime matches 20 at @e[type=armor_stand,tag=tailshead] run playsound custom.t2s.tails.wand_pleasegive master @a ~ ~ ~ 1000
execute if score @s dialoguetime matches 20 run tellraw @a [{"text":"<"},{"text":"Tails","color":"gold"},{"text":"> "},{"text":"Hey, above you!","color":"gold"}]
execute if score @s dialoguetime matches 52 run tellraw @a [{"text":"<"},{"text":"Tails","color":"gold"},{"text":"> "},{"text":"Can I see that wand for a second?","color":"gold"}]
execute if score @s dialoguetime matches 90 run tellraw @a [{"text":"<"},{"text":"Tails","color":"gold"},{"text":"> "},{"text":"I'm looking for any familiar energy signatures that could allow me to make a portal back home!","color":"gold"}]

execute if score @s dialoguetime matches 99 run scoreboard players set @s dialoguetime 98

execute if score @s dialoguetime matches 117 run tellraw @a [{"text":"<"},{"text":"Tails","color":"gold"},{"text":"> "},{"text":"I'll just extract a sample.","color":"gold"}]
execute if score @s dialoguetime matches 176 run tellraw @a [{"text":"<"},{"text":"Tails","color":"gold"},{"text":"> "},{"text":"By the way, how are you holding up down there?","color":"gold"}]
execute if score @s dialoguetime matches 228 run tellraw @a [{"text":"<"},{"text":"Tails","color":"gold"},{"text":"> "},{"text":"I flew in there for just a second and I'm already freezing!","color":"gold"}]

execute if score @s dialoguetime matches 300 at @e[type=armor_stand,tag=tailshead] run playsound custom.t2s.tails.wand_sample_result master @a ~ ~ ~ 1000
execute if score @s dialoguetime matches 315 run tellraw @a [{"text":"<"},{"text":"Tails","color":"gold"},{"text":"> "},{"text":"Ah!","color":"gold"}]
execute if score @s dialoguetime matches 324 run tellraw @a [{"text":"<"},{"text":"Tails","color":"gold"},{"text":"> "},{"text":"This can definitely be used as a power source,","color":"gold"}]
execute if score @s dialoguetime matches 372 run tellraw @a [{"text":"<"},{"text":"Tails","color":"gold"},{"text":"> "},{"text":"but it doesn't seem to be linked with my world in any way.","color":"gold"}]
execute if score @s dialoguetime matches 435 run tellraw @a [{"text":"<"},{"text":"Tails","color":"gold"},{"text":"> "},{"text":"I still need to do more experiments on diamonds and sculk...","color":"gold"}]