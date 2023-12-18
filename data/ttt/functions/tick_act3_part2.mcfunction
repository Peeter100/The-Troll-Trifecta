# ACT-WIDE KILL EVENTS

## execute as @a[team=p] at @s unless block ~ ~ ~ #ttt:passable unless block ~ ~1 ~ #ttt:passable run effect give @s resistance 1 0 true
## execute as @a[team=p] at @s unless block ~ ~ ~ #ttt:passable unless block ~ ~1 ~ #ttt:passable run effect give @s instant_damage 1 0 true



# BASIC TICK

execute as @a[tag=!testing,team=!s,scores={hp=1..}] at @s if entity @s[x=-1,y=35,z=8,dx=2,dy=1,dz=2] run tp @s 37 8 103
execute as @a[tag=!testing,team=!s] at @s if entity @s[x=-6,y=30,z=-6,dx=13,dy=4,dz=13] run tp @s 37 8 103
effect give @a weakness 99999 0 true
execute as @a[team=p] at @s store result score @s x run data get entity @s Pos[0]
execute as @a[team=p] at @s store result score @s y run data get entity @s Pos[1]
execute as @a[team=p] at @s store result score @s z run data get entity @s Pos[2]

#execute if entity @s[scores={acttimer=3050..}] run function ttt:amogus/tick_postgame
execute if entity @s[scores={acttimer=3040..3049}] run function ttt:amogus/tick_minigame
#execute if entity @s[scores={acttimer=3030..3039}] run function ttt:amogus/tick_checkup
execute if entity @s[scores={acttimer=3020..3029}] run function ttt:amogus/tick_report
execute if entity @s[scores={acttimer=3010..3019}] run function ttt:amogus/tick_emergency
execute if entity @s[scores={acttimer=3000..3009}] run function ttt:amogus/tick_game
execute if entity @s[scores={acttimer=110..2999}] run function ttt:amogus/tick_intro
execute if entity @s[scores={acttimer=100..109}] run function ttt:amogus/tick_player_decision
execute if entity @s[scores={acttimer=0..99}] run function ttt:amogus/tick_preload