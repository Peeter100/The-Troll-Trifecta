scoreboard players set @a[x=13,y=30,z=48,dx=0,dy=2,dz=8,team=p] deathreason 15
scoreboard players set @s acttimer 30

playsound custom.act2.shaq master @a 16 31.25 48 1000
playsound custom.act2.shaq master @a 16 31.25 48 1000
playsound item.crossbow.shoot master @a 16 31.25 48 1000
playsound item.crossbow.shoot master @a 16 31.25 51 1000
playsound item.crossbow.shoot master @a 16 31.25 54 1000
execute positioned ~ 31.5 ~ run function ttt:act2/wrong_cave_arrow
execute positioned ~ 32.0 ~ run function ttt:act2/wrong_cave_arrow