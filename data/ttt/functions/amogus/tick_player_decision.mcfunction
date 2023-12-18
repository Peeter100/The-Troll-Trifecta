execute as @a[tag=!testing,team=!s] at @s unless entity @s[x=23,y=8,z=101,dx=10,dy=3,dz=4] run tp @s 31 8 103
execute if entity @s[scores={acttimer=105..109}] run scoreboard players set @s acttimer 100
effect clear @a invisibility

tag @r[team=p,x=23,y=8,z=101,dx=1,dy=2,dz=4,limit=1] add amplayer

execute if entity @a[tag=amplayer] run tp @a 35 1 102 -72 0
execute if entity @a[tag=amplayer] run tellraw @a [{"selector":"@a[tag=amplayer]"},{"text":" will be playing!","color":"light_purple"}]
execute if entity @a[tag=amplayer] run scoreboard players set @s acttimer 110