scoreboard players set .taskmodop npcbodytp 4
scoreboard players operation .taskmodid npcbodytp = @s am_gameid
scoreboard players operation .taskmodid npcbodytp %= .taskmodop npcbodytp
execute if score .taskmodid npcbodytp matches 0 unless score @s am_gameid matches 6 run function ttt:amogus/minigames/convertid/id6
execute if score .taskmodid npcbodytp matches 1 unless score @s am_gameid matches 9 run function ttt:amogus/minigames/convertid/id9
execute if score .taskmodid npcbodytp matches 2 unless score @s am_gameid matches 10 run function ttt:amogus/minigames/convertid/id10
execute if score .taskmodid npcbodytp matches 3 unless score @s am_gameid matches 11 run function ttt:amogus/minigames/convertid/id11