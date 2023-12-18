execute as @a[tag=!testing,team=!s] at @s unless entity @s[x=-3,y=29,z=144,dx=0,dy=1,dz=0] run tp @s -3 29.06250 144
effect give @a[team=p] slowness 1 4 true
gamemode spectator @a[team=p,tag=!fnfplayer,gamemode=!spectator]
execute as @a[team=p,tag=!fnfplayer] run spectate @p[tag=fnfplayer]

execute as @a[tag=fnfplayer] store result score @s x run data get entity @s Pos[0] 100
execute as @a[tag=fnfplayer] store result score @s y run data get entity @s Pos[1] 100
execute as @a[tag=fnfplayer] store result score @s z run data get entity @s Pos[2] 100

execute if entity @s[scores={fnf_ad_bf=15..}] run function ttt:fnf/animation_higher_transition_bf
execute if entity @s[scores={fnf_ad_p=15..}] run function ttt:fnf/animation_higher_transition_p100

#execute if entity @s[scores={acttimer=1100..}] run scoreboard players set @s acttimer 1099

execute if score @s acttimer matches ..2513 run function ttt:fnf/song_duration/half1
execute if score @s acttimer matches 2514..3822 run function ttt:fnf/song_duration/half2
execute if score @s acttimer matches 3823.. run function ttt:fnf/song_duration/half3

title @a actionbar [{"text":"Misses: ","color":"white"},{"score":{"name":"@s","objective":"fnf_misses"}}]

##################################
# -22 ticks for note spawning    #
##################################
# fnf_hd_l --> hold delay left   #
# fnf_hd_u --> hold delay up     #
# fnf_hd_d --> hold delay down   #
# fnf_hd_r --> hold delay right  #
# fnf_beat --> repeating tick    #
# fnf_beatoff --> beat offset    #
# fnf_hp --> bf health (reverse) #
# fnf_ad_bf --> animation delay  #
# fnf_ad_p --> animation delay   #
# fnf_dir_bf --> bf anim dir     #
# fnf_dir_p --> p anim dir       #
# fnf_mt --> miss timer          #
# fnf_misses --> misses          #
# fnf_dd --> dodge delay         #
##################################


#execute if entity @s[scores={fnf_beat=14..}] run scoreboard players add @s fnf_beatoff 1
#execute if entity @s[scores={fnf_beat=14..}] run scoreboard players set @s fnf_beat 0
#execute if entity @s[scores={fnf_beatoff=4..}] run scoreboard players remove @s fnf_beat 1
#execute if entity @s[scores={fnf_beatoff=4..}] run scoreboard players set @s fnf_beatoff 0

execute if entity @s[scores={fnf_beatoff=0}] run function ttt:fnf/tick_beat_offset0
execute if entity @s[scores={fnf_beatoff=1}] run function ttt:fnf/tick_beat_offset1
execute if entity @s[scores={fnf_beatoff=2}] run function ttt:fnf/tick_beat_offset0
execute if entity @s[scores={fnf_beatoff=3}] run function ttt:fnf/tick_beat_offset1

# arrow tp
execute as @e[type=armor_stand,tag=fnfarrow] at @s run function ttt:fnf/arrow_tick
scoreboard players remove @s[scores={fnf_mt=1..}] fnf_mt 1

execute if entity @a[tag=fnfplayer,scores={x=..-251}] at @e[type=armor_stand,tag=bfnotebutton,tag=leftbutton,limit=1] positioned ~ ~1 ~ run function ttt:fnf/buttons_player_leftpress
execute if entity @a[tag=fnfplayer,scores={z=14451..}] at @e[type=armor_stand,tag=bfnotebutton,tag=downbutton,limit=1] positioned ~ ~1 ~ run function ttt:fnf/buttons_player_downpress
execute if entity @a[tag=fnfplayer,scores={z=..14449}] at @e[type=armor_stand,tag=bfnotebutton,tag=upbutton,limit=1] positioned ~ ~1 ~ run function ttt:fnf/buttons_player_uppress
execute if entity @a[tag=fnfplayer,scores={x=-249..}] at @e[type=armor_stand,tag=bfnotebutton,tag=rightbutton,limit=1] positioned ~ ~1 ~ run function ttt:fnf/buttons_player_rightpress

execute as @e[type=armor_stand,tag=pnotebutton,limit=4] at @s positioned ~ ~1 ~ if entity @e[type=armor_stand,tag=p100arrow,distance=0..0.3] run function ttt:fnf/hitreg_generic_enemy

# 3 --> 4
execute if score @s fnf_ad_bf matches 4..14 at @e[type=armor_stand,tag=bfnotebutton] positioned ~ ~1 ~ if entity @e[type=armor_stand,tag=bfarrow,distance=1.25] run function ttt:fnf/animation_transition_bf
execute if score @s fnf_ad_p matches 4..14 at @e[type=armor_stand,tag=pnotebutton] positioned ~ ~1 ~ if entity @e[type=armor_stand,tag=p100arrow,distance=1.25] run function ttt:fnf/animation_transition_p100

scoreboard players remove @s[scores={fnf_ad_bf=1..}] fnf_ad_bf 1
scoreboard players remove @s[scores={fnf_ad_p=1..}] fnf_ad_p 1
execute if entity @s[scores={fnf_ad_bf=2}] run function ttt:fnf/animation_transition_bf
execute if entity @s[scores={fnf_ad_p=2}] run function ttt:fnf/animation_transition_p100
execute if entity @s[scores={fnf_ad_bf=1}] run function ttt:fnf/animation_expire_bf
execute if entity @s[scores={fnf_ad_p=1}] run function ttt:fnf/animation_expire_p100

#execute as @e[type=armor_stand,tag=fnfarrow,tag=bfarrow] at @s unless block ~ ~1 ~ #ttt:passable if block ~ ~ ~ #ttt:passable run function ttt:fnf/note_miss
#execute as @e[type=armor_stand,tag=fnfarrow] at @s unless block ~ ~1 ~ #ttt:passable if block ~ ~ ~ #ttt:passable run kill @s

tag @s remove jackhit
scoreboard players remove @s[scores={fnf_hd_l=0..}] fnf_hd_l 1
scoreboard players remove @s[scores={fnf_hd_d=0..}] fnf_hd_d 1
scoreboard players remove @s[scores={fnf_hd_u=0..}] fnf_hd_u 1
scoreboard players remove @s[scores={fnf_hd_r=0..}] fnf_hd_r 1
execute if entity @s[scores={fnf_hd_l=0}] run item replace entity @e[type=armor_stand,tag=bfnotebutton,tag=leftbutton] weapon.mainhand with redstone{CustomModelData:11}
execute if entity @s[scores={fnf_hd_d=0}] run item replace entity @e[type=armor_stand,tag=bfnotebutton,tag=downbutton] weapon.mainhand with redstone{CustomModelData:12}
execute if entity @s[scores={fnf_hd_u=0}] run item replace entity @e[type=armor_stand,tag=bfnotebutton,tag=upbutton] weapon.mainhand with redstone{CustomModelData:13}
execute if entity @s[scores={fnf_hd_r=0}] run item replace entity @e[type=armor_stand,tag=bfnotebutton,tag=rightbutton] weapon.mainhand with redstone{CustomModelData:14}

# the jump scoreboard doesn't work when the player is already moving cuz ????????? (FUCK YOU)
execute if entity @a[scores={y=2907..},tag=fnfplayer] run function ttt:fnf/spacebar
execute if entity @s[scores={fnf_dd=100}] run function ttt:fnf/beam_dodgemiss
scoreboard players remove @s[scores={fnf_dd=1..}] fnf_dd 1

execute as @a[tag=fnfplayer,scores={walking=1..}] run tp @s -3 29.06250 144 180 0
scoreboard players set @a walking 0