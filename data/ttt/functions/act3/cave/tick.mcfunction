execute unless entity @e[type=armor_stand,tag=baldidoor] run function ttt:act3/cave/spawn

execute if entity @a[team=p,scores={x=36..38,y=21..22,z=160..162}] positioned 37 21 161 unless entity @s[scores={d5=1}] run function ttt:diamond_hunt/d5
execute as @a[team=p,scores={x=18..50,y=21..29,z=153..172},nbt={Inventory:[{tag:{ring:1b}}]}] at @s run function ttt:act3/ring_take

execute as @a[team=p,scores={x=18..22,y=21..23,z=156..163}] at @s run function ttt:amogus/minigames/id3/arachnophobia
execute as @a[team=p,scores={x=18..22,y=24,z=156..158}] at @s run function ttt:amogus/minigames/id3/arachnophobia