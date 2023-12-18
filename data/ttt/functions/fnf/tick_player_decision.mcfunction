execute as @a[tag=!testing,team=!s] at @s unless entity @s[x=-6,y=23,z=147,dx=6,dy=2,dz=12] run tp @s -3 23 149
execute if entity @s[scores={acttimer=6..9}] run scoreboard players set @s acttimer 5

tag @r[x=-6,y=22,z=155,dx=6,dy=2,dz=2,team=p,limit=1] add fnfplayer

execute if entity @a[tag=fnfplayer] run tp @a -3 25 161
execute if entity @a[tag=fnfplayer] run tellraw @a [{"selector":"@a[tag=fnfplayer]"},{"text":" will be playing!","color":"light_purple"}]
execute if entity @a[tag=fnfplayer] run tellraw @a [{"text":"","color":"yellow"},{"text":"[!] NOTE\n","bold":true},{"text":"This next section was designed with:\n- an FOV set to "},{"text":"Normal (70)","color":"green"},{"text":"\n- FOV Effects set to "},{"text":"100% (Dynamic FOV)","color":"green"}]
execute if entity @a[tag=fnfplayer] run scoreboard players set @s acttimer 10