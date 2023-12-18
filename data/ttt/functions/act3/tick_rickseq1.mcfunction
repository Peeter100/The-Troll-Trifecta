particle dust 0.6 1 0.6 1 -38 20 199.85 .2 .5 .2 0 3 normal @a
particle minecraft:crimson_spore -27 15 208 2 2 5 0 1 normal @a
particle minecraft:crimson_spore -36 16 188 3 3 3 0 1 normal @a

execute if entity @a[team=p,scores={x=-38,y=19,z=199}] run function ttt:act3/rick_portal
execute as @a[team=p,scores={x=-41..-28,y=22..24,z=196..201}] at @s run tp @s ~ 21 ~

execute as @a[team=p,scores={rc=1..}] at @s run function ttt:act3/power_rc
execute as @a[team=p,scores={jump=1..}] at @s run function ttt:act3/power_jump
execute as @a[team=p] at @s unless entity @s[scores={ring_energy=100,ring_charge=0}] run function ttt:act3/ring_tick

# execute as @a[team=p,scores={x=..7,y=30..,z=207..},nbt={Inventory:[{tag:{ring:1b}}]}] at @s run function ttt:act3/ring_take

execute unless entity @e[tag=sv,tag=raining] run execute as @a[team=p,scores={x=-10..4,y=30,z=229..243},nbt={OnGround:1b}] at @s run function ttt:act3/magenta_blocks

execute if entity @a[team=p,scores={z=255..}] unless entity @s[scores={dialogueseq=2..3}] run function ttt:act3/dialogueseq3

execute if entity @a[team=p,scores={x=-40..-28,y=25..27,z=197..202}] unless entity @s[scores={am_gametimer=10..30}] run function ttt:act3/tick_rick
execute if entity @s[scores={am_gametimer=10..30}] run function ttt:act3/tick_rick
execute unless entity @a[team=p,scores={x=-40..-28,y=25..27,z=197..202}] as @e[tag=rickhead] at @s run tp @s ~ ~ ~ -90 0

execute as @a[team=p,scores={x=-3..15,y=..18,z=207..221}] at @s run function ttt:act3/wrong_region