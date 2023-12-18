particle minecraft:crimson_spore 31 17 208 3.5 2 3 0 1 normal @a
particle minecraft:crimson_spore 39 20 186 3 4 3 0 1 normal @a
particle minecraft:campfire_cosy_smoke 39 11 182 2.5 2 2.5 0.07 1 normal @a

execute unless entity @a[team=p,scores={x=0..14,y=10..18,z=206..}] if entity @a[team=p,scores={x=-13..-1,y=15..17,z=209..218}] if entity @s[scores={am_maintimer=0..120}] run function ttt:act3/swappers_normal
execute if entity @a[team=p,scores={x=0..14,y=10..18,z=206..}] if entity @s[scores={am_maintimer=0..120}] run function ttt:act3/swappers_jump

execute if entity @a[team=p,scores={x=15..17,y=14..,z=206..221}] run function ttt:act3/hoglin_dash
execute unless entity @a[team=p,scores={x=15..17,y=14..,z=206..221}] if entity @a[team=p,scores={x=18..36,y=14..19,z=167..220}] run function ttt:act3/hoglin_dash

execute as @a[team=p,scores={x=25,y=16..18,z=193..197}] at @s if block 26 17 ~ barrier run function ttt:act3/corridor_blockade

execute as @a[team=p,scores={rc=1..}] at @s run function ttt:act3/power_rc
execute as @a[team=p,scores={jump=1..}] at @s run function ttt:act3/power_jump
execute as @a[team=p] at @s unless entity @s[scores={ring_energy=100,ring_charge=0}] run function ttt:act3/ring_tick

execute as @a[team=p,scores={x=..7,y=30..,z=207..},nbt={Inventory:[{tag:{ring:1b}}]}] at @s run function ttt:act3/ring_take
execute if entity @a[team=p,scores={x=18..50,y=21..29,z=153..178}] run function ttt:act3/cave/tick

execute as @a[team=p,tag=!ringtutorial,scores={x=32..46,z=183..196}] run function ttt:act3/ring_hint

execute unless entity @s[tag=raining] as @a[team=p,scores={x=-10..4,y=30,z=229..243},nbt={OnGround:1b}] at @s run function ttt:act3/magenta_blocks
execute unless entity @s[tag=raining] if entity @a[team=p,scores={x=-13..7,y=25,z=225..250}] if entity @s[tag=globalmsg1,tag=!globalmsg2] run function ttt:act3/magenta_blocks_fall

execute if entity @a[team=p,scores={z=255..}] unless entity @s[scores={dialogueseq=2..3}] run function ttt:act3/dialogueseq3

### execute if entity @s[tag=raining] run function ttt:act3/tick_rain

execute if entity @a[team=p,scores={x=-40..-28,y=25..27,z=197..202}] unless entity @s[scores={am_gametimer=10..350}] run function ttt:act3/tick_rick
execute if entity @s[scores={am_gametimer=10..350}] run function ttt:act3/tick_rick
execute unless entity @a[team=p,scores={x=-40..-28,y=25..27,z=197..202}] as @e[tag=rickhead] at @s run tp @s ~ ~ ~ -90 0