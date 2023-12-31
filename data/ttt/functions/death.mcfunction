# RUNS AS PLAYER WHO DIED

execute if score @s deathreason matches 0 run function ttt:death_assume

execute if score @s deathreason matches 0..9 run function ttt:reset/deathgroup1
execute if score @s deathreason matches 10..19 run function ttt:reset/deathgroup2
execute if score @s deathreason matches 20..29 run function ttt:reset/deathgroup3
execute if score @s deathreason matches 30..39 run function ttt:reset/deathgroup4
execute if score @s deathreason matches 40..49 run function ttt:reset/deathgroup5
execute if score @s deathreason matches 50..59 run function ttt:reset/deathgroup6
execute if score @s deathreason matches 60.. run function ttt:reset/deathgroup7

time set noon
gamerule fireDamage true
gamerule fallDamage true
stopsound @a master custom.fnf.mischievous_world
stopsound @a master custom.act1.va.fnf_intro
stopsound @a master custom.act1.va.fnf_tutorial
stopsound @a master custom.act2.quandale
stopsound @a master custom.act3.fnaf.ambience
schedule clear ttt:amogus/minigames/id10/play_ambience
schedule clear ttt:amogus/minigames/id11/papyrus_cycle_start
schedule clear ttt:amogus/minigames/id11/papyrus_cycle_stop
kill @e[type=tnt]
kill @e[tag=xmasmob]

execute as @e[type=marker,tag=sv] run function ttt:death_server
title @a reset
tag @s remove bossplayer

execute if score @s deathreason matches 58 run title @a title {"text":"Defeat","color":"red","bold":true}
execute if score @s deathreason matches 58 run playsound custom.amogus.victory_crew master @a ~ ~ ~ 1000

scoreboard players set @a deathreason 0
tag @a remove ignoreinventory
tag @a remove xmas_bounty

gamemode adventure @a[team=!s]
gamemode spectator @a[team=s]
clear @a
kill @a[team=p,scores={death=0}]
scoreboard players add @s[scores={left=0}] deathvis 1
scoreboard players set @e[type=marker,tag=sv] deathtime 1
scoreboard players set @e[type=marker,tag=sv] acttimer 0
scoreboard players set @a death 0
# function ttt:map_reset