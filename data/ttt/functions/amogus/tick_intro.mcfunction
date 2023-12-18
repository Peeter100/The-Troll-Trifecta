gamemode spectator @a[tag=!amplayer,gamemode=!spectator]
execute as @a[tag=!amplayer] at @s run spectate @p[tag=amplayer]
effect give @a[team=p] invisibility 99999 0 true
effect give @a[tag=amplayer] jump_boost 99999 200 true

effect clear @a[scores={food=4..},tag=amplayer] saturation
effect give @a[scores={food=4..},tag=amplayer] hunger 1 255 true

effect clear @a[scores={food=..1}] hunger
effect give @a[scores={food=..1}] saturation 1 0 true

execute as @e[tag=amogai,nbt=!{Health:100.0f}] at @s run data merge entity @s {Health:100.0f}
execute as @a[tag=amplayer] at @s unless entity @s[nbt={Inventory:[{Slot:-106b,tag:{impostorsuit:1b}}]}] run function ttt:amogus/intro/offhand

execute if score @s acttimer matches 115 run function ttt:amogus/intro/startmessage

execute if score @s acttimer matches 160 run tellraw @a [{"text":"<","color":"white"},{"text":"King","color":"yellow"},{"text":"> "},{"text":"In case you are unaware of how Among Us works,","color":"yellow"}]
execute if score @s acttimer matches 160 at @p[tag=amplayer] run playsound custom.act3.king.talk master @a ~ ~ ~ 1000

execute if score @s acttimer matches 220 run tellraw @a [{"text":"<","color":"white"},{"text":"King","color":"yellow"},{"text":"> "},{"text":"there will be 9 crewmates and 1 hidden impostor among you.","color":"yellow"}]
execute if score @s acttimer matches 220 at @p[tag=amplayer] run playsound custom.act3.king.laugh master @a ~ ~ ~ 1000

execute if score @s acttimer matches 290 run tellraw @a [{"text":"<","color":"white"},{"text":"King","color":"yellow"},{"text":"> "},{"text":"The job of the crewmates is to complete all of their tasks","color":"yellow"}]
execute if score @s acttimer matches 290 at @p[tag=amplayer] run playsound custom.act3.king.talk master @a ~ ~ ~ 1000

execute if score @s acttimer matches 360 run tellraw @a [{"text":"<","color":"white"},{"text":"King","color":"yellow"},{"text":"> "},{"text":"or eliminate the impostor pretending to be a crewmate.","color":"yellow"}]
execute if score @s acttimer matches 360 at @p[tag=amplayer] run playsound custom.act3.king.laugh master @a ~ ~ ~ 1000

execute if score @s acttimer matches 430 run tellraw @a [{"text":"<","color":"white"},{"text":"King","color":"yellow"},{"text":"> "},{"text":"You can do so by gathering information on each other and looking out for skeptical situations.","color":"yellow"}]
execute if score @s acttimer matches 430 at @p[tag=amplayer] run playsound custom.act3.king.talk master @a ~ ~ ~ 1000

execute if score @s acttimer matches 550 run tellraw @a [{"text":"<","color":"white"},{"text":"King","color":"yellow"},{"text":"> "},{"text":"Present your evidence during emergency meetings and pick the correct person to eject.","color":"yellow"}]
execute if score @s acttimer matches 550 at @p[tag=amplayer] run playsound custom.act3.king.talk master @a ~ ~ ~ 1000

execute if score @s acttimer matches 670 run tellraw @a [{"text":"<","color":"white"},{"text":"King","color":"yellow"},{"text":"> "},{"text":"The job of an impostor is to either kill all of the crewmates,","color":"yellow"}]
execute if score @s acttimer matches 670 at @p[tag=amplayer] run playsound custom.act3.king.mad master @a ~ ~ ~ 1000

execute if score @s acttimer matches 750 run tellraw @a [{"text":"<","color":"white"},{"text":"King","color":"yellow"},{"text":"> "},{"text":"or to successfully sabotage the reactor or O2 systems.","color":"yellow"}]
execute if score @s acttimer matches 750 at @p[tag=amplayer] run playsound custom.act3.king.laugh master @a ~ ~ ~ 1000

execute if score @s acttimer matches 810 run tellraw @a [{"text":"<","color":"white"},{"text":"King","color":"yellow"},{"text":"> "},{"text":"You will need to carefully plan your strategy to not get caught doing mistrustful activities.","color":"yellow"}]
execute if score @s acttimer matches 810 at @p[tag=amplayer] run playsound custom.act3.king.talk master @a ~ ~ ~ 1000

execute if score @s acttimer matches 930 run tellraw @a [{"text":"<","color":"white"},{"text":"King","color":"yellow"},{"text":"> "},{"text":"Those are the basic rules of Among Us.","color":"yellow"}]
execute if score @s acttimer matches 930 at @p[tag=amplayer] run playsound custom.act3.king.laugh master @a ~ ~ ~ 1000

execute if score @s acttimer matches 980 run tellraw @a [{"text":"<","color":"white"},{"text":"King","color":"yellow"},{"text":"> "},{"text":"However!","color":"yellow"}]
execute if score @s acttimer matches 980 at @p[tag=amplayer] run playsound custom.act3.king.mad master @a ~ ~ ~ 1000

execute if score @s acttimer matches 1000 run tellraw @a [{"text":"<","color":"white"},{"text":"King","color":"yellow"},{"text":"> "},{"text":"Due to certain complications on our end, there will be a small twist to the mentioned rules!","color":"yellow"}]
execute if score @s acttimer matches 1000 at @p[tag=amplayer] run playsound custom.act3.king.talk master @a ~ ~ ~ 1000

execute if score @s acttimer matches 1120 run tellraw @a [{"text":"<","color":"white"},{"text":"King","color":"yellow"},{"text":"> "},{"text":"Because ","color":"yellow"},{"text":"Sans","color":"#C4E2FF"},{"text":" managed to kidnap all of our minions, somehow including our ","color":"yellow"},{"text":"Giant","color":"gold"},{"text":",","color":"yellow"}]
execute if score @s acttimer matches 1120 at @p[tag=amplayer] run playsound custom.act3.king.mad master @a ~ ~ ~ 1000

execute if score @s acttimer matches 1240 run tellraw @a [{"text":"<","color":"white"},{"text":"King","color":"yellow"},{"text":"> "},{"text":"we REALLY need tasks to be done, as I don't have enough people to rule around!","color":"yellow"}]
execute if score @s acttimer matches 1240 at @p[tag=amplayer] run playsound custom.act3.king.cry master @a ~ ~ ~ 1000

execute if score @s acttimer matches 1350 run tellraw @a [{"text":"<","color":"white"},{"text":"King","color":"yellow"},{"text":"> "},{"text":"So, even as an impostor, you will need to do at least 1 task every 90 seconds.","color":"yellow"}]
execute if score @s acttimer matches 1350 at @p[tag=amplayer] run playsound custom.act3.king.laugh master @a ~ ~ ~ 1000

execute if score @s acttimer matches 1470 run tellraw @a [{"text":"<","color":"white"},{"text":"King","color":"yellow"},{"text":"> "},{"text":"If failed to do so, you will automatically be ejected no matter if there is any evidence against you.","color":"yellow"}]
execute if score @s acttimer matches 1470 at @p[tag=amplayer] run playsound custom.act3.king.mad master @a ~ ~ ~ 1000

execute if score @s acttimer matches 1600 run tellraw @a [{"text":"<","color":"white"},{"text":"King","color":"yellow"},{"text":"> "},{"text":"The timer is PAUSED while you're doing a task and it always resets back to 90 seconds when one is finished.","color":"yellow"}]
execute if score @s acttimer matches 1600 at @p[tag=amplayer] run playsound custom.act3.king.talk master @a ~ ~ ~ 1000

execute if score @s acttimer matches 1730 run tellraw @a [{"text":"<","color":"white"},{"text":"King","color":"yellow"},{"text":"> "},{"text":"So, in any case, please take your time with tasks.","color":"yellow"}]
execute if score @s acttimer matches 1730 at @p[tag=amplayer] run playsound custom.act3.king.mad master @a ~ ~ ~ 1000

execute if score @s acttimer matches 1800 run tellraw @a [{"text":"<","color":"white"},{"text":"King","color":"yellow"},{"text":"> "},{"text":"If you do them wrong, I might be dethroned!","color":"yellow"}]
execute if score @s acttimer matches 1800 at @p[tag=amplayer] run playsound custom.act3.king.cry master @a ~ ~ ~ 1000

execute if score @s acttimer matches 1860 run tellraw @a [{"text":"<","color":"white"},{"text":"King","color":"yellow"},{"text":"> "},{"text":"I already lost all of my minions...","color":"yellow"}]
execute if score @s acttimer matches 1860 at @p[tag=amplayer] run playsound custom.act3.king.cry master @a ~ ~ ~ 1000

execute if score @s acttimer matches 1920 run scoreboard players enable @a[tag=amplayer] Game_Choice
execute if score @s acttimer matches 1920 run tellraw @a [{"text":"<","color":"white"},{"text":"King","color":"yellow"},{"text":"> "},{"text":"Any questions? ","color":"yellow"},{"color":"green","text":"[Start]","bold":true,"hoverEvent":{"action":"show_text","contents":[{"text":"Click to start the game!","color":"green","italic":false}]},"clickEvent":{"action":"run_command","value":"/trigger Game_Choice set 1"}}]
execute if score @s acttimer matches 1920 at @p[tag=amplayer] run playsound custom.act3.king.talk master @a ~ ~ ~ 1000

execute if entity @a[tag=amplayer,scores={Game_Choice=1..}] run function ttt:amogus/intro/skip

execute if score @s acttimer matches 1930 run scoreboard players set @s acttimer 1925

execute if score @s acttimer matches 2100 run tp @a[tag=amplayer] 37 8 103
execute if score @s acttimer matches 2100 run title @a times 40 25 20

execute if score @s acttimer matches 2110 if score @s am_played matches 2 run function ttt:amogus/levelling/tick_intro

execute if score @s acttimer matches 2120 run function ttt:amogus/intro/role_reveal

execute if score @s acttimer matches 2205 run function ttt:amogus/prepare_zombai

execute if score @s acttimer matches 2220 run setblock 35 2 101 air
execute if score @s acttimer matches 2220 run setblock 35 2 103 air
execute if score @s acttimer matches 2220 run tellraw @a [{"text":"Tasks are highlighted by green particles!\n","color":"green","bold":true},{"text":"You need to do at least 1 task every 90 seconds!","color":"green","bold":false}]
execute if score @s acttimer matches 2220 run function ttt:amogus/game_resume