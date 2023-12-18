execute as @e[tag=blazeprot] at @s run tp @s ~ ~ ~ facing entity @p[x=10,y=15,z=175,dx=7,dy=2,dz=10,team=p]
execute as @e[tag=blazeprot] at @s run scoreboard players add @s npcbodytp 1
execute as @e[tag=blazeprot,scores={npcbodytp=5..}] at @s run particle block_marker fire ~ ~1 ~ .1 .2 .1 0 5 force @a
execute as @e[tag=blazeprot,scores={npcbodytp=5..}] at @s run scoreboard players set @s npcbodytp -15

#execute as @a[x=15,y=16,z=178,dx=5,dy=2,dz=4,team=p] at @s run function ttt:act3/blaze_guard_attack
execute as @a[x=15,y=16,z=178,dx=2,dy=2,dz=4,team=p] at @s run function ttt:act3/blaze_guard_attack