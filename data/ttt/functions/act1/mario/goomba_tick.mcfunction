execute if entity @a[team=p,scores={y=38..41}] unless entity @s[tag=killcause] run tp @s ~ ~ ~ facing entity @p[team=p,scores={y=38..41}]
execute if entity @s[tag=killcause] run tp @s ~ ~ ~ facing entity @p[team=p,scores={deathreason=40}]

execute if entity @a[team=p,scores={y=38..41},distance=0..6] run tag @s add killcause
execute if entity @a[team=p,scores={y=38..41},distance=0..6] run scoreboard players set @p[team=p,scores={y=38..41},distance=0..6] deathreason 40

execute if entity @s[tag=killcause] run tp @s ^ ^ ^0.5
execute if entity @s[tag=killcause] at @s run kill @p[team=p,scores={deathreason=40},distance=0..1]
execute if entity @s[tag=killcause] at @s run tp @s ^ ^ ^0.5
execute if entity @s[tag=killcause] at @s run kill @p[team=p,scores={deathreason=40},distance=0..1]

execute if entity @s[tag=killcause] unless entity @a[team=p,scores={deathreason=40}] run tag @s add justkilleveryone
execute if entity @s[tag=justkilleveryone] run scoreboard players set @p[team=p] deathreason 40
execute if entity @s[tag=justkilleveryone] run kill @a[team=p,scores={deathreason=40}]