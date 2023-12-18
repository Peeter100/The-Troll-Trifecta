execute as @a[team=p] at @s if block ~ ~ ~ red_carpet run function ttt:act1/carpet_game/redstep

execute as @a[team=p,scores={z=128..},tag=!parkourdone,nbt={OnGround:1b}] at @s run function ttt:act1/carpet_game/start
execute as @a[team=p,scores={z=139..},tag=!hungertext] at @s run function ttt:act1/carpet_game/warning

execute if entity @a[team=p,scores={z=148..}] unless block 5 35 162 air run function ttt:act1/carpet_game/sniper_spawn
execute unless score @s dialogueseq matches 5.. if entity @e[type=armor_stand,tag=sniper] run function ttt:act1/carpet_game/sniper_tick

execute if entity @a[x=-9,y=29,z=151.75,dx=0,dy=0,dz=1,team=p] positioned -9 29 152 unless block ~ ~ ~ red_carpet run function ttt:act1/carpet_game/place_red
execute if entity @a[x=-6,y=29,z=149.75,dx=0,dy=0,dz=1,team=p] positioned -6 29 150 unless block ~ ~ ~ red_carpet run function ttt:act1/carpet_game/place_red
execute if entity @a[x=-3.25,y=29,z=148,dx=0,dy=0,dz=0,team=p] positioned -3 29 148 unless block ~ ~ ~ red_carpet run function ttt:act1/carpet_game/place_red
execute if entity @a[x=-1.5,y=29,z=146,dx=0,dy=0,dz=0,team=p] positioned -2 29 147 unless block ~ ~ ~ lime_carpet run function ttt:act1/carpet_game/place_green
execute if entity @a[x=2.5,y=29,z=148,dx=0,dy=0,dz=0,team=p] positioned 2 29 147 unless block ~ ~ ~ lime_carpet run function ttt:act1/carpet_game/place_green
execute if entity @a[x=2,y=29,z=144.5,dx=0,dy=0,dz=0,team=p] positioned 2 29 145 unless block ~ ~ ~ red_carpet run function ttt:act1/carpet_game/place_red
execute if entity @a[x=2,y=29,z=145.25,dx=0,dy=0,dz=0,team=p] positioned 2 29 145 unless block ~ ~ ~ red_carpet run function ttt:act1/carpet_game/place_red
execute if entity @a[x=3.75,y=29,z=144,dx=0,dy=0,dz=0,team=p] unless entity @a[x=4,y=29,z=145.25,dx=0,dy=0,dz=0,team=p] positioned 4 29 145 unless block ~ ~ ~ red_carpet run function ttt:act1/carpet_game/place_red
execute if entity @a[x=3.75,y=29,z=144,dx=0,dy=0,dz=0,team=p] positioned 2 29 143 unless block ~ ~ ~ red_carpet run function ttt:act1/carpet_game/place_red
execute if entity @a[x=4,y=29,z=148,dx=0,dy=0,dz=0,team=p] positioned 1 29 151 unless block ~ ~ ~ lime_carpet run function ttt:act1/carpet_game/place_green
execute if entity @a[x=3.75,y=29,z=150,dx=0,dy=0,dz=0,team=p] positioned 2 29 150 unless block ~ ~ ~ red_carpet run function ttt:act1/carpet_game/place_red
execute if entity @a[x=-2.75,y=29,z=144,dx=0,dy=0,dz=0,team=p] positioned -1 29 144 unless block ~ ~ ~ red_carpet run function ttt:act1/carpet_game/place_red
execute if entity @a[x=-2,y=29,z=150,dx=0,dy=0,dz=0,team=p] positioned -3 29 151 unless block ~ ~ ~ red_carpet run function ttt:act1/carpet_game/place_red
#execute if entity @a[x=-5,y=29,z=152,dx=0,dy=0,dz=0,team=p] positioned -6 29 153 unless block ~ ~ ~ red_carpet run advancement grant @a only ttt:carpet
execute if entity @a[x=-5,y=29,z=152,dx=0,dy=0,dz=0,team=p] positioned -6 29 153 unless block ~ ~ ~ red_carpet run function ttt:act1/carpet_game/place_red