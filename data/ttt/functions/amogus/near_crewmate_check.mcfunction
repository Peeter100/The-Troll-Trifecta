execute unless block ~ ~ ~ #ttt:passable run execute as @a[tag=amplayer,tag=am_cankill] at @s run function ttt:amogus/slot_disable_kill
execute unless entity @s[tag=done] if entity @e[tag=amogalive,distance=0..0.75] run execute as @a[tag=amplayer,tag=!am_cankill] at @s run function ttt:amogus/slot_enable_kill

### execute if entity @e[tag=amogalive,distance=0..0.75] run execute as @a[tag=amplayer,tag=!am_cankill] at @s run function ttt:amogus/slot_enable_kill
### execute unless entity @s[tag=done] unless block ~ ~ ~ #ttt:passable run execute as @a[tag=amplayer,tag=am_cankill] at @s run function ttt:amogus/slot_disable_kill