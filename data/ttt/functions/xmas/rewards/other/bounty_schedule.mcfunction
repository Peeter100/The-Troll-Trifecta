execute as @r[tag=xmas_bounty] at @s if entity @e[type=marker,tag=sv,scores={st_xmas=1,playing=1,deathtime=0}] run function ttt:xmas/rewards/other/bounty_fullfill
tag @a remove xmas_bounty