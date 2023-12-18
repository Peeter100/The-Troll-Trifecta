# 11 - cafeteria & storage
# 12 - upper & lower engine
# 13 - upper engine & cafeteria
# 14 - lower engine & storage

execute unless entity @e[type=marker,tag=amhost,tag=hasvisioncasted] run function ttt:amogus/ai/player/force_check_raycast
execute if entity @e[type=villager,tag=amogai,tag=cansee] run scoreboard players add @e[type=marker,tag=sv,limit=1] am_usednearby 1

execute if entity @e[tag=sv,scores={am_location=0}] run scoreboard players set @s Sabotage_ID 4
execute if entity @e[tag=sv,scores={am_location=1}] run scoreboard players set @s Sabotage_ID 5
execute if entity @e[tag=sv,scores={am_location=2..7}] run scoreboard players set @s Sabotage_ID 11
execute if entity @e[tag=sv,scores={am_location=8}] run scoreboard players set @s Sabotage_ID 6
execute if entity @e[tag=sv,scores={am_location=9}] run scoreboard players set @s Sabotage_ID 9
execute if entity @e[tag=sv,scores={am_location=10}] run scoreboard players set @s Sabotage_ID 12
execute if entity @e[tag=sv,scores={am_location=11}] run scoreboard players set @s Sabotage_ID 10
execute if entity @e[tag=sv,scores={am_location=12}] run scoreboard players set @s Sabotage_ID 8
execute if entity @e[tag=sv,scores={am_location=13}] run scoreboard players set @s Sabotage_ID 7

execute if entity @s[scores={x=14..21,z=102..}] run scoreboard players set @s Sabotage_ID 11
execute if entity @s[scores={z=118..}] run scoreboard players set @s Sabotage_ID 11
execute if entity @s[scores={x=0..2,z=108..}] run scoreboard players set @s Sabotage_ID 11

execute if entity @s[scores={x=13..29,z=59..67}] run scoreboard players set @s Sabotage_ID 12

execute if entity @s[scores={x=33..38,z=69..88}] run scoreboard players set @s Sabotage_ID 13

execute if entity @s[scores={x=-4..-2,z=73..90}] run scoreboard players set @s Sabotage_ID 14
execute if entity @s[scores={x=-1..6,z=73..75}] run scoreboard players set @s Sabotage_ID 14
execute if entity @s[scores={x=4..6,z=69..72}] run scoreboard players set @s Sabotage_ID 14