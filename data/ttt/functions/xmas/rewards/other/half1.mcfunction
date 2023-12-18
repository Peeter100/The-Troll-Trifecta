execute if score @s npcbodytp matches 1 if predicate ttt:50ch as @p[tag=needsgift] at @s run function ttt:xmas/rewards/other/death
execute if score @s npcbodytp matches 2 unless entity @a[tag=xmas_bounty] as @p[tag=needsgift] at @s run function ttt:xmas/rewards/other/bounty
execute if score @s npcbodytp matches 1..2 as @p[tag=needsgift] at @s run function ttt:xmas/rewards/other/candyblade_redirect
execute if score @s npcbodytp matches 3 as @p[tag=needsgift] at @s run function ttt:xmas/rewards/other/clear
execute if score @s npcbodytp matches 4 as @p[tag=needsgift] at @s run function ttt:xmas/rewards/other/tp_random
execute if score @s npcbodytp matches 5 as @p[tag=needsgift] at @s run function ttt:xmas/rewards/other/tp_start