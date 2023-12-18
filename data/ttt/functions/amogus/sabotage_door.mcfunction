# IDs of specific doors:
# 4 - cafeteria
# 5 - storage
# 6 - electrical
# 7 - medbay
# 8 - upper engine
# 9 - lower engine
# 10 - security
# 11 - cafeteria & storage
# 12 - upper & lower engine
# 13 - upper engine & cafeteria
# 14 - lower engine & storage

# IDs of location:
# [x] marks locations with doors
# 0 - cafeteria [x]
# 1 - storage [x]
# 2 - admin
# 3 - communication
# 4 - shields
# 5 - o2
# 6 - navigation
# 7 - weapons
# 8 - electrical [x]
# 9 - lower engine [x]
# 10 - reactor
# 11 - security [x]
# 12 - upper engine [x]
# 13 - medbay [x]

execute if entity @a[tag=amplayer,scores={Sabotage_ID=4}] if entity @e[tag=dmarker0,scores={npcbodytp=1..}] run execute as @e[tag=dmarker0,scores={npcbodytp=1..},limit=1,sort=random] at @s run function ttt:amogus/doormarker_warn
execute if entity @a[tag=amplayer,scores={Sabotage_ID=4}] unless entity @e[tag=dmarker0,scores={npcbodytp=1..}] run execute as @e[tag=dmarker0] at @s run function ttt:amogus/doormarker_close
execute if entity @a[tag=amplayer,scores={Sabotage_ID=5}] if entity @e[tag=dmarker1,scores={npcbodytp=1..}] run execute as @e[tag=dmarker1,scores={npcbodytp=1..},limit=1,sort=random] at @s run function ttt:amogus/doormarker_warn
execute if entity @a[tag=amplayer,scores={Sabotage_ID=5}] unless entity @e[tag=dmarker1,scores={npcbodytp=1..}] run execute as @e[tag=dmarker1] at @s run function ttt:amogus/doormarker_close
execute if entity @a[tag=amplayer,scores={Sabotage_ID=6}] if entity @e[tag=dmarker8,scores={npcbodytp=1..}] run execute as @e[tag=dmarker8,scores={npcbodytp=1..},limit=1,sort=random] at @s run function ttt:amogus/doormarker_warn
execute if entity @a[tag=amplayer,scores={Sabotage_ID=6}] unless entity @e[tag=dmarker8,scores={npcbodytp=1..}] run execute as @e[tag=dmarker8] at @s run function ttt:amogus/doormarker_close
execute if entity @a[tag=amplayer,scores={Sabotage_ID=7}] if entity @e[tag=dmarker13,scores={npcbodytp=1..}] run execute as @e[tag=dmarker13,scores={npcbodytp=1..},limit=1,sort=random] at @s run function ttt:amogus/doormarker_warn
execute if entity @a[tag=amplayer,scores={Sabotage_ID=7}] unless entity @e[tag=dmarker13,scores={npcbodytp=1..}] run execute as @e[tag=dmarker13] at @s run function ttt:amogus/doormarker_close
execute if entity @a[tag=amplayer,scores={Sabotage_ID=8}] if entity @e[tag=dmarker12,scores={npcbodytp=1..}] run execute as @e[tag=dmarker12,scores={npcbodytp=1..},limit=1,sort=random] at @s run function ttt:amogus/doormarker_warn
execute if entity @a[tag=amplayer,scores={Sabotage_ID=8}] unless entity @e[tag=dmarker12,scores={npcbodytp=1..}] run execute as @e[tag=dmarker12] at @s run function ttt:amogus/doormarker_close
execute if entity @a[tag=amplayer,scores={Sabotage_ID=9}] if entity @e[tag=dmarker9,scores={npcbodytp=1..}] run execute as @e[tag=dmarker9,scores={npcbodytp=1..},limit=1,sort=random] at @s run function ttt:amogus/doormarker_warn
execute if entity @a[tag=amplayer,scores={Sabotage_ID=9}] unless entity @e[tag=dmarker9,scores={npcbodytp=1..}] run execute as @e[tag=dmarker9] at @s run function ttt:amogus/doormarker_close
execute if entity @a[tag=amplayer,scores={Sabotage_ID=10}] if entity @e[tag=dmarker11,scores={npcbodytp=1..}] run execute as @e[tag=dmarker11,scores={npcbodytp=1..},limit=1,sort=random] at @s run function ttt:amogus/doormarker_warn
execute if entity @a[tag=amplayer,scores={Sabotage_ID=10}] unless entity @e[tag=dmarker11,scores={npcbodytp=1..}] run execute as @e[tag=dmarker11] at @s run function ttt:amogus/doormarker_close

execute if entity @a[tag=amplayer,scores={Sabotage_ID=11}] if entity @e[tag=dmarker0,scores={npcbodytp=1..}] run execute as @e[tag=dmarker0,scores={npcbodytp=1..},limit=1,sort=random] at @s run function ttt:amogus/doormarker_warn
execute if entity @a[tag=amplayer,scores={Sabotage_ID=11}] unless entity @e[tag=dmarker0,scores={npcbodytp=1..}] run execute as @e[tag=dmarker0] at @s run function ttt:amogus/doormarker_close
execute if entity @a[tag=amplayer,scores={Sabotage_ID=11}] if entity @e[tag=dmarker1,scores={npcbodytp=1..}] run execute as @e[tag=dmarker1,scores={npcbodytp=1..},limit=1,sort=random] at @s run function ttt:amogus/doormarker_warn
execute if entity @a[tag=amplayer,scores={Sabotage_ID=11}] unless entity @e[tag=dmarker1,scores={npcbodytp=1..}] run execute as @e[tag=dmarker1] at @s run function ttt:amogus/doormarker_close
execute if entity @a[tag=amplayer,scores={Sabotage_ID=12}] if entity @e[tag=dmarker12,scores={npcbodytp=1..}] run execute as @e[tag=dmarker12,scores={npcbodytp=1..},limit=1,sort=random] at @s run function ttt:amogus/doormarker_warn
execute if entity @a[tag=amplayer,scores={Sabotage_ID=12}] unless entity @e[tag=dmarker12,scores={npcbodytp=1..}] run execute as @e[tag=dmarker12] at @s run function ttt:amogus/doormarker_close
execute if entity @a[tag=amplayer,scores={Sabotage_ID=12}] if entity @e[tag=dmarker9,scores={npcbodytp=1..}] run execute as @e[tag=dmarker9,scores={npcbodytp=1..},limit=1,sort=random] at @s run function ttt:amogus/doormarker_warn
execute if entity @a[tag=amplayer,scores={Sabotage_ID=12}] unless entity @e[tag=dmarker9,scores={npcbodytp=1..}] run execute as @e[tag=dmarker9] at @s run function ttt:amogus/doormarker_close
execute if entity @a[tag=amplayer,scores={Sabotage_ID=13}] if entity @e[tag=dmarker12,scores={npcbodytp=1..}] run execute as @e[tag=dmarker12,scores={npcbodytp=1..},limit=1,sort=random] at @s run function ttt:amogus/doormarker_warn
execute if entity @a[tag=amplayer,scores={Sabotage_ID=13}] unless entity @e[tag=dmarker12,scores={npcbodytp=1..}] run execute as @e[tag=dmarker12] at @s run function ttt:amogus/doormarker_close
execute if entity @a[tag=amplayer,scores={Sabotage_ID=13}] if entity @e[tag=dmarker0,scores={npcbodytp=1..}] run execute as @e[tag=dmarker0,scores={npcbodytp=1..},limit=1,sort=random] at @s run function ttt:amogus/doormarker_warn
execute if entity @a[tag=amplayer,scores={Sabotage_ID=13}] unless entity @e[tag=dmarker0,scores={npcbodytp=1..}] run execute as @e[tag=dmarker0] at @s run function ttt:amogus/doormarker_close
execute if entity @a[tag=amplayer,scores={Sabotage_ID=14}] if entity @e[tag=dmarker9,scores={npcbodytp=1..}] run execute as @e[tag=dmarker9,scores={npcbodytp=1..},limit=1,sort=random] at @s run function ttt:amogus/doormarker_warn
execute if entity @a[tag=amplayer,scores={Sabotage_ID=14}] unless entity @e[tag=dmarker9,scores={npcbodytp=1..}] run execute as @e[tag=dmarker9] at @s run function ttt:amogus/doormarker_close
execute if entity @a[tag=amplayer,scores={Sabotage_ID=14}] if entity @e[tag=dmarker1,scores={npcbodytp=1..}] run execute as @e[tag=dmarker1,scores={npcbodytp=1..},limit=1,sort=random] at @s run function ttt:amogus/doormarker_warn
execute if entity @a[tag=amplayer,scores={Sabotage_ID=14}] unless entity @e[tag=dmarker1,scores={npcbodytp=1..}] run execute as @e[tag=dmarker1] at @s run function ttt:amogus/doormarker_close