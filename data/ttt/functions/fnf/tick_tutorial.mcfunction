execute as @a[tag=!testing,team=!s] at @s unless entity @s[x=-3,y=29,z=144,dx=0,dy=1,dz=0] run tp @s -3 29.06250 144
effect give @a[team=p] slowness 1 4 true
gamemode spectator @a[team=p,tag=!fnfplayer,gamemode=!spectator]
execute as @a[team=p,tag=!fnfplayer] run spectate @p[tag=fnfplayer]

execute as @a[tag=fnfplayer] store result score @s x run data get entity @s Pos[0] 100
execute as @a[tag=fnfplayer] store result score @s y run data get entity @s Pos[1] 100
execute as @a[tag=fnfplayer] store result score @s z run data get entity @s Pos[2] 100

#stopsound @a master custom.fnf.mischievous_world
execute if score @s acttimer matches 112 run title @a times 2 5 2

execute if score @s acttimer matches 140 run title @a title {"text":"3","color":"green"}
execute if score @s acttimer matches 140 at @p[tag=fnfplayer] run playsound custom.fnf.3 master @a ~ ~ ~ 1000
execute if score @s acttimer matches 156 run title @a title {"text":"2","color":"yellow"}
execute if score @s acttimer matches 156 at @p[tag=fnfplayer] run playsound custom.fnf.2 master @a ~ ~ ~ 1000
execute if score @s acttimer matches 160 run title @a title {"text":""}
execute if score @s acttimer matches 160 run stopsound @a master custom.fnf.2
execute if score @s acttimer matches 160 at @p[tag=fnfplayer] run playsound custom.act1.va.fnf_tutorial master @a ~ ~ ~ 1000
execute if score @s acttimer matches 160 run data merge entity @e[type=armor_stand,tag=peeter1,limit=1] {Pose:{Head:[0f,45f,0f]}}
execute if score @s acttimer matches 160 run data merge entity @e[type=armor_stand,tag=gfmain,limit=1] {Pose:{Head:[0f,5f,0f]},ArmorItems:[{},{},{},{id:"minecraft:redstone",Count:1b,tag:{CustomModelData:9}}]}
execute if score @s acttimer matches 160 run tellraw @a [{"text":"<","color":"white"},{"text":"Peeter100","color":"gold"},{"text":"> "},{"text":"In case you have no idea what's going on...","color":"gold"}]
execute if score @s acttimer matches 220 run item replace entity @e[type=armor_stand,tag=peeter2,limit=1] weapon.offhand with emerald{CustomModelData:10}
execute if score @s acttimer matches 220 run tellraw @a [{"text":"<","color":"white"},{"text":"Peeter100","color":"gold"},{"text":"> "},{"text":"You have to press the arrows on the RIGHT SIDE.","color":"gold"}]
execute if score @s acttimer matches 304 run item replace entity @e[type=armor_stand,tag=peeter2,limit=1] weapon.offhand with emerald{CustomModelData:5}
execute if score @s acttimer matches 304 run tellraw @a [{"text":"<","color":"white"},{"text":"Peeter100","color":"gold"},{"text":"> "},{"text":"Use WASD, or whatever buttons you use for movement, to press the arrows.","color":"gold"}]
execute if score @s acttimer matches 432 run tellraw @a [{"text":"<","color":"white"},{"text":"Peeter100","color":"gold"},{"text":"> "},{"text":"For example,","color":"gold"}]
execute if score @s acttimer matches 460 run tellraw @a [{"text":"<","color":"white"},{"text":"Peeter100","color":"gold"},{"text":"> "},{"text":"if you press A (the key to strafe to the LEFT),","color":"gold"}]
execute if score @s acttimer matches 555 run tellraw @a [{"text":"<","color":"white"},{"text":"Peeter100","color":"gold"},{"text":"> "},{"text":"you'll press the LEFT arrow.","color":"gold"}]
execute if score @s acttimer matches 608 run data merge entity @e[type=armor_stand,tag=gfmain,limit=1] {Pose:{Head:[0f,355f,0f]},ArmorItems:[{},{},{},{id:"minecraft:redstone",Count:1b,tag:{CustomModelData:3}}]}
execute if score @s acttimer matches 608 run title @a title {"text":"3","color":"green"}
execute if score @s acttimer matches 608 at @p[tag=fnfplayer] run playsound custom.fnf.3 master @a ~ ~ ~ 1000
execute if score @s acttimer matches 613 run data merge entity @e[type=armor_stand,tag=peeter1,limit=1] {Pose:{Head:[0f,0f,0f]}}
execute if score @s acttimer matches 613 run tellraw @a [{"text":"<","color":"white"},{"text":"Peeter100","color":"gold"},{"text":"> "},{"text":"Wait-!","color":"gold"}]
execute if score @s acttimer matches 624 run title @a title {"text":"2","color":"yellow"}
execute if score @s acttimer matches 624 at @p[tag=fnfplayer] run playsound custom.fnf.2 master @a ~ ~ ~ 1000
execute if score @s acttimer matches 628 run data merge entity @e[type=armor_stand,tag=peeter1,limit=1] {Pose:{Head:[20f,0f,0f]}}
execute if score @s acttimer matches 628 run tellraw @a [{"text":"<","color":"white"},{"text":"Peeter100","color":"gold"},{"text":"> "},{"text":"Ugh, whatever...","color":"gold"}]
execute if score @s acttimer matches 628 run scoreboard players set @s acttimer 954

execute if score @s acttimer matches 936 run title @a title {"text":"3","color":"green"}
execute if score @s acttimer matches 936 at @p[tag=fnfplayer] run playsound custom.fnf.3 master @a ~ ~ ~ 1000
execute if score @s acttimer matches 952 run title @a title {"text":"2","color":"yellow"}
execute if score @s acttimer matches 952 at @p[tag=fnfplayer] run playsound custom.fnf.2 master @a ~ ~ ~ 1000
execute if score @s acttimer matches 968 run title @a title {"text":"1","color":"red"}
execute if score @s acttimer matches 968 at @p[tag=fnfplayer] run playsound custom.fnf.1 master @a ~ ~ ~ 1000
execute if score @s acttimer matches 984 run title @a title {"text":"GO!","color":"green"}
execute if score @s acttimer matches 984 at @p[tag=fnfplayer] run playsound custom.fnf.go master @a ~ ~ ~ 1000

execute if score @s acttimer matches 978 run function ttt:fnf/spawn_up_enemy
execute if score @s acttimer matches 992 run function ttt:fnf/spawn_down_enemy
execute if score @s acttimer matches 999 run scoreboard players set @s fnf_beat 0
execute if score @s acttimer matches 999 run scoreboard players set @s fnf_beatoff 0
execute if score @s acttimer matches 999 run tag @s remove stopbeat


##################################
# fnf_hd_l --> hold delay left   #
# fnf_hd_u --> hold delay up     #
# fnf_hd_d --> hold delay down   #
# fnf_hd_r --> hold delay right  #
##################################

execute unless score @s acttimer matches ..119 if entity @a[tag=fnfplayer,scores={x=..-251}] run item replace entity @e[tag=bfnotebutton,tag=leftbutton] weapon.mainhand with redstone{CustomModelData:21}
execute unless score @s acttimer matches ..119 if entity @a[tag=fnfplayer,scores={z=14451..}] run item replace entity @e[tag=bfnotebutton,tag=downbutton] weapon.mainhand with redstone{CustomModelData:22}
execute unless score @s acttimer matches ..119 if entity @a[tag=fnfplayer,scores={z=..14449}] run item replace entity @e[tag=bfnotebutton,tag=upbutton] weapon.mainhand with redstone{CustomModelData:23}
execute unless score @s acttimer matches ..119 if entity @a[tag=fnfplayer,scores={x=-249..}] run item replace entity @e[tag=bfnotebutton,tag=rightbutton] weapon.mainhand with redstone{CustomModelData:24}

# execute if entity @e[tag=leftdir,tag=pressdir] if entity @s[scores={fnf_hd_l=..0}] run say hitleft
# execute if entity @e[tag=updir,tag=pressdir] if entity @s[scores={fnf_hd_u=..0}] run say hitup
# execute if entity @e[tag=downdir,tag=pressdir] if entity @s[scores={fnf_hd_d=..0}] run say hitdown
# execute if entity @e[tag=rightdir,tag=pressdir] if entity @s[scores={fnf_hd_r=..0}] run say hitright

execute as @e[tag=fnfarrow] at @s run tp @s ~ ~0.25 ~

execute as @e[tag=pnotebutton,tag=upbutton] at @s if entity @s[nbt={HandItems:[{id:"minecraft:redstone",Count:1b,tag:{CustomModelData:23}},{}]}] run item replace entity @s weapon.mainhand with redstone{CustomModelData:13}
execute as @e[tag=pnotebutton,tag=upbutton] at @s positioned ~ ~1 ~ if entity @e[tag=uparrow,tag=p100arrow,distance=0..0.3] run function ttt:fnf/hitreg_up_enemy

execute if entity @a[tag=fnfplayer,scores={x=..-251}] run scoreboard players set @s fnf_hd_l 4
execute if entity @a[tag=fnfplayer,scores={z=14451..}] run scoreboard players set @s fnf_hd_d 4
execute if entity @a[tag=fnfplayer,scores={z=..14449}] run scoreboard players set @s fnf_hd_u 4
execute if entity @a[tag=fnfplayer,scores={x=-249..}] run scoreboard players set @s fnf_hd_r 4
scoreboard players remove @s[scores={fnf_hd_l=0..}] fnf_hd_l 1
scoreboard players remove @s[scores={fnf_hd_d=0..}] fnf_hd_d 1
scoreboard players remove @s[scores={fnf_hd_u=0..}] fnf_hd_u 1
scoreboard players remove @s[scores={fnf_hd_r=0..}] fnf_hd_r 1
execute if entity @s[scores={fnf_hd_l=0}] run item replace entity @e[tag=bfnotebutton,tag=leftbutton] weapon.mainhand with redstone{CustomModelData:11}
execute if entity @s[scores={fnf_hd_d=0}] run item replace entity @e[tag=bfnotebutton,tag=downbutton] weapon.mainhand with redstone{CustomModelData:12}
execute if entity @s[scores={fnf_hd_u=0}] run item replace entity @e[tag=bfnotebutton,tag=upbutton] weapon.mainhand with redstone{CustomModelData:13}
execute if entity @s[scores={fnf_hd_r=0}] run item replace entity @e[tag=bfnotebutton,tag=rightbutton] weapon.mainhand with redstone{CustomModelData:14}

execute as @a[tag=fnfplayer,scores={walking=1..}] at @s run tp @s -3 29.06250 144 180 0
scoreboard players set @a walking 0