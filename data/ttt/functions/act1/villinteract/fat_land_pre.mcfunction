tag @s remove offground

execute if entity @s[scores={x=5..13,y=30,z=91..94}] run function ttt:act1/villinteract/hunger_stop
#execute if entity @s[x=5,y=30,z=91,dx=8,dy=0,dz=3] run tag @s add noheal
#execute if entity @s[x=5,y=30,z=91,dx=8,dy=0,dz=3] run tag @s add weightanim
#execute if entity @s[x=5,y=30,z=91,dx=8,dy=0,dz=3,scores={weight=1}] run scoreboard players set @s weight 7
#execute if entity @s[x=5,y=30,z=91,dx=8,dy=0,dz=3,scores={weight=2}] run scoreboard players set @s weight 15