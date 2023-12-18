playsound entity.player.big_fall master @a ~ ~ ~ 1000 0.75
playsound entity.player.big_fall master @a ~ ~ ~ 1000 0.75
particle sweep_attack ~ ~.1 ~ 1 0 1 0 50 force @a
#scoreboard players set @a[team=p,distance=1..4,scores={hp=..6}] deathreason 13
#effect give @a[team=p,distance=1..4] instant_damage 1 0 true
tag @s remove offground

function ttt:act1/villinteract/fat_land_glassrow
execute positioned ~ ~1 ~ run function ttt:act1/villinteract/fat_land_glassrow

execute if entity @s[scores={x=5..13,y=30,z=91..94}] run function ttt:act1/villinteract/hunger_stop
#execute if entity @s[x=5,y=30,z=91,dx=8,dy=0,dz=3] run tag @s add noheal
#execute if entity @s[x=5,y=30,z=91,dx=8,dy=0,dz=3] run tag @s add weightanim
#execute if entity @s[x=5,y=30,z=91,dx=8,dy=0,dz=3] run scoreboard players set @s weight 32

execute if entity @s[scores={x=3..15,z=75..90}] as @e[type=marker,tag=sv] unless entity @s[tag=globalmsg1] run function ttt:act1/villinteract/fat_land_msg