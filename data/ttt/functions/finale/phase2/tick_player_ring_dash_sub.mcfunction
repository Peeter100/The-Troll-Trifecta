execute as @e[tag=bossmob,distance=..5] unless entity @s[type=evoker] at @s run function ttt:finale/phase2/tick_player_ring_dash_mobkill
execute unless entity @s[tag=hitringboss] at @s if entity @e[type=iron_golem,distance=..4] at 00000001-0000-0000-0000-000000000000 run function ttt:finale/phase2/boss_hit
execute at @s positioned ^ ^ ^0.25 if block ~ ~ ~ #ttt:passable unless block ~ 14 ~ air run tp @s ~ ~ ~
execute at @s positioned ^ ^ ^0.25 unless block ~ ~ ~ #ttt:passable if block ~ ~1 ~ #ttt:passable unless block ~ 14 ~ air run tp @s ~ ~1 ~