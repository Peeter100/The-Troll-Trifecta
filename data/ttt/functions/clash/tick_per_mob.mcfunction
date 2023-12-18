execute unless entity @s[tag=notickup] run scoreboard players add @s npcbodytp 1
execute if score @s npcbodytp matches 6 run data merge entity @s {CustomNameVisible:1b}

execute if entity @s[type=witch] if score @s npcbodytp matches 11 if entity @a[team=p,distance=0..10,scores={hp=1..}] if score @e[type=marker,tag=sv,limit=1] f3_skelspawned matches ..6 run summon skeleton ~ ~ ~ {Team:"enemy",PersistenceRequired:1b,Health:2f,Tags:["forkill","clashmob","clashready","notickup"],Attributes:[{Name:generic.max_health,Base:2},{Name:generic.movement_speed,Base:0.35},{Name:generic.attack_damage,Base:1},{Name:generic.attack_knockback,Base:1}]}
execute if score @s npcbodytp matches 41.. run scoreboard players set @s npcbodytp 10

execute if entity @s[type=pig] unless entity @s[nbt={Passengers:[{id:"minecraft:zombie_villager"}]}] run kill @s
execute if block ~ ~ ~ water run kill @s