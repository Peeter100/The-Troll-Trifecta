execute as @a[x=-7,y=30,z=41,dx=14,dy=1,dz=11,team=p] at @s positioned ~ 30 ~ run tp @s ^-1 ^ ^
playsound custom.generic.lol_instant master @a 0 30 48 1000
scoreboard players set @e[type=marker,tag=sv] fnf_usedchest 1