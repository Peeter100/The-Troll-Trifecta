particle minecraft:crimson_spore -27 15 208 2 2 5 0 1 normal @a
particle minecraft:crimson_spore -36 16 188 3 3 3 0 1 normal @a

execute as @a[team=p,scores={rc=1..}] at @s run function ttt:act3/power_rc
execute as @a[team=p,scores={jump=1..}] at @s run function ttt:act3/power_jump
execute as @a[team=p] at @s unless entity @s[scores={ring_energy=100,ring_charge=0}] run function ttt:act3/ring_tick

execute unless entity @s[tag=raining] if entity @a[team=p,scores={x=..-27,y=10..25,z=..196}] run function ttt:act3/rain_start_alt
execute as @a[team=p,scores={x=-40..-35,y=28..29,z=197..198}] at @s run tp @s ~ 27 ~

execute as @a[team=p,scores={x=-40..,y=25..,z=197..},nbt={Inventory:[{tag:{ring:1b}}]}] at @s run function ttt:act3/ring_take

# execute unless block -2 29 220 air if entity @a[team=p,scores={x=-10..-6,y=25..27,z=214..219}] run function ttt:act3/rain_crack_underneath

# effect give @a[team=p,scores={x=-5..-2,y=29..34,z=218..221},tag=oilwork] minecraft:levitation 1 5 true

execute if entity @a[team=p,scores={x=-40..-35,y=19..21,z=195..199}] unless entity @s[scores={am_gametimer=10..185}] run function ttt:act3/tick_rick
execute if entity @s[scores={am_gametimer=10..185}] run function ttt:act3/tick_rick
execute unless entity @a[team=p,scores={x=-40..-35,y=19..21,z=195..199}] run execute as @e[tag=rickhead] at @s run tp @s ~ ~ ~ 180 0

execute if score @s am_played matches 4.. run function ttt:act3/tick_rickseq2_altportal

execute as @a[team=p,scores={x=-3..15,y=..18,z=207..221}] at @s run function ttt:act3/wrong_region