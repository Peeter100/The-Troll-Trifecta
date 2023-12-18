particle explosion_emitter ~ ~ ~ 0 0 0 0 10 force @a
playsound entity.generic.explode master @a ~ ~ ~ 1000 1
kill @e[tag=villshop,distance=0..8]
execute as @p[team=p,distance=0..3] at @s run function ttt:act2/tnt_die
execute unless entity @a[scores={deathreason=23}] as @p[team=p,distance=0..6,scores={hp=..14}] at @s run function ttt:act2/tnt_die
execute unless entity @a[scores={deathreason=23}] as @a[team=p,distance=0..6] at @s run effect give @s instant_damage 1 1 true
execute unless entity @a[scores={deathreason=23}] as @p[team=p,distance=0..8,scores={hp=..7}] at @s run function ttt:act2/tnt_die
execute unless entity @a[scores={deathreason=23}] as @a[team=p,distance=0..8] at @s run effect give @s instant_damage 1 0 true

execute if entity @s[x=-6,y=30,z=162,dx=6,dy=0,dz=3] if entity @a[scores={deathreason=23}] run fill -2 30 165 -4 32 165 air destroy
execute if entity @s[x=-6,y=30,z=162,dx=6,dy=0,dz=3] if entity @a[scores={deathreason=23}] run setblock -1 31 165 air destroy
execute if entity @s[x=-6,y=30,z=162,dx=6,dy=0,dz=3] if entity @a[scores={deathreason=23}] run fill -3 33 165 -4 33 165 air destroy
execute if entity @s[x=-6,y=30,z=162,dx=6,dy=0,dz=3] if entity @a[scores={deathreason=23}] run setblock -5 32 165 air destroy
execute if entity @s[x=-6,y=30,z=162,dx=6,dy=0,dz=3] unless entity @a[scores={deathreason=23}] as @e[type=marker,tag=sv,limit=1] run function ttt:act2/afterclash/tnt_tick_ground_explode_actswitch

kill @s