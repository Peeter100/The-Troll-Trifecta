execute if entity @s[scores={am_maintimer=0..19}] run scoreboard players set @s am_maintimer 50
execute if entity @s[scores={am_maintimer=20..40}] run scoreboard players set @s am_maintimer 80

# the jump scoreboard is broken because minecraft is a VERY fun game to script for!!!!!!!!!!!
#execute if entity @a[team=p,scores={x=0..15,y=10..18,z=206..,jump=1..}] run scoreboard players add @s am_maintimer 10

execute as @a[team=p,scores={x=0..14,y=12..18,z=206..},nbt={OnGround:1b}] at @s run tag @s add onground
execute if entity @a[team=p,scores={x=0..14,y=12..18,z=206..},nbt={OnGround:0b},tag=onground] run scoreboard players add @s am_maintimer 10
execute as @a[team=p,scores={x=0..14,y=12..18,z=206..},nbt={OnGround:0b},tag=onground] at @s run tag @s remove onground

execute if entity @s[scores={am_maintimer=70..79}] as @a at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 1000
execute if entity @s[scores={am_maintimer=70..79}] run fill 1 15 215 13 15 215 air replace yellow_concrete
execute if entity @s[scores={am_maintimer=70..79}] run setblock 1 15 213 minecraft:red_concrete
execute if entity @s[scores={am_maintimer=70..79}] run setblock 4 15 213 minecraft:red_concrete
execute if entity @s[scores={am_maintimer=70..79}] run setblock 7 15 213 minecraft:red_concrete
execute if entity @s[scores={am_maintimer=70..79}] run setblock 10 15 213 minecraft:red_concrete
execute if entity @s[scores={am_maintimer=70..79}] run setblock 13 15 213 minecraft:red_concrete
execute if entity @s[scores={am_maintimer=70..79}] run scoreboard players set @s am_maintimer 80

execute if entity @s[scores={am_maintimer=100..}] as @a at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 1000
execute if entity @s[scores={am_maintimer=100..}] run fill 1 15 213 13 15 213 air replace red_concrete
execute if entity @s[scores={am_maintimer=100..}] run setblock 1 15 215 minecraft:yellow_concrete
execute if entity @s[scores={am_maintimer=100..}] run setblock 4 15 215 minecraft:yellow_concrete
execute if entity @s[scores={am_maintimer=100..}] run setblock 7 15 215 minecraft:yellow_concrete
execute if entity @s[scores={am_maintimer=100..}] run setblock 10 15 215 minecraft:yellow_concrete
execute if entity @s[scores={am_maintimer=100..}] run setblock 13 15 215 minecraft:yellow_concrete
execute if entity @s[scores={am_maintimer=100..}] run scoreboard players set @s am_maintimer 50