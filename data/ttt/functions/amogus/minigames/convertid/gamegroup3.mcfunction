scoreboard players set .taskmodop npcbodytp 4
scoreboard players operation .taskmodid npcbodytp = @s am_gameid
scoreboard players operation .taskmodid npcbodytp %= .taskmodop npcbodytp
execute if score .taskmodid npcbodytp matches 0 unless score @s am_gameid matches 4 run function ttt:amogus/minigames/convertid/id4
execute if score .taskmodid npcbodytp matches 1 unless score @s am_gameid matches 5 run function ttt:amogus/minigames/convertid/id5
execute if score .taskmodid npcbodytp matches 2 unless score @s am_gameid matches 8 run function ttt:amogus/minigames/convertid/id8
execute if score .taskmodid npcbodytp matches 3 unless score @s am_gameid matches 12 run function ttt:amogus/minigames/convertid/id12