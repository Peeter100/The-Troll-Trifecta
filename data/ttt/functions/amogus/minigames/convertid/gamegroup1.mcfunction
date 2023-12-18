scoreboard players set .taskmodop npcbodytp 4
scoreboard players operation .taskmodid npcbodytp = @s am_gameid
scoreboard players operation .taskmodid npcbodytp %= .taskmodop npcbodytp
execute if score .taskmodid npcbodytp matches 0 unless score @s am_gameid matches 1 run function ttt:amogus/minigames/convertid/id1
execute if score .taskmodid npcbodytp matches 1 unless score @s am_gameid matches 2 run function ttt:amogus/minigames/convertid/id2
execute if score .taskmodid npcbodytp matches 2 unless score @s am_gameid matches 3 run function ttt:amogus/minigames/convertid/id3
execute if score .taskmodid npcbodytp matches 3 unless score @s am_gameid matches 7 run function ttt:amogus/minigames/convertid/id7