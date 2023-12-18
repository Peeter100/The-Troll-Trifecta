execute if score @s st_am_forceid matches 1 unless score @s am_gameid matches 1 run function ttt:amogus/minigames/convertid/id1
execute if score @s st_am_forceid matches 2 unless score @s am_gameid matches 2 run function ttt:amogus/minigames/convertid/id2
execute if score @s st_am_forceid matches 3 unless score @s am_gameid matches 3 run function ttt:amogus/minigames/convertid/id3
execute if score @s st_am_forceid matches 4 unless score @s am_gameid matches 4 run function ttt:amogus/minigames/convertid/id4
execute if score @s st_am_forceid matches 5 unless score @s am_gameid matches 5 run function ttt:amogus/minigames/convertid/id5
execute if score @s st_am_forceid matches 6 unless score @s am_gameid matches 6 run function ttt:amogus/minigames/convertid/id6
execute if score @s st_am_forceid matches 7 unless score @s am_gameid matches 7 run function ttt:amogus/minigames/convertid/id7
execute if score @s st_am_forceid matches 8 unless score @s am_gameid matches 8 run function ttt:amogus/minigames/convertid/id8
execute if score @s st_am_forceid matches 9 unless score @s am_gameid matches 9 run function ttt:amogus/minigames/convertid/id9
execute if score @s st_am_forceid matches 10 unless score @s am_gameid matches 10 run function ttt:amogus/minigames/convertid/id10
execute if score @s st_am_forceid matches 11 unless score @s am_gameid matches 11 run function ttt:amogus/minigames/convertid/id11
execute if score @s st_am_forceid matches 12 unless score @s am_gameid matches 12 run function ttt:amogus/minigames/convertid/id12
execute unless entity @s[scores={st_am_singletask=1},tag=hasdiamonds] run tag @e[type=marker,tag=amhost,limit=1] add hasforcedid
tag @s remove forcedtask