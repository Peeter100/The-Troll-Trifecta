# gamemode adventure @a[gamemode=!adventure,tag=!testing]
effect give @a resistance 99999 255 true

execute if entity @s[scores={acttimer=5000..}] run function ttt:fnf/tick_death
execute if entity @s[scores={acttimer=1000..4999}] run function ttt:fnf/tick_song
execute if entity @s[scores={acttimer=111..999}] run function ttt:fnf/tick_tutorial
execute if entity @s[scores={acttimer=10..110}] run function ttt:fnf/tick_preload
execute if entity @s[scores={acttimer=1..9}] run function ttt:fnf/tick_player_decision

effect clear @a[scores={food=..1}] hunger
effect give @a[scores={food=..1}] saturation 1 0 true