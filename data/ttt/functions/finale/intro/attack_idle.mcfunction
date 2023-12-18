execute unless entity @a[team=p,tag=trollgetarget] at @e[type=iron_golem,tag=trollgeai] run tag @p[team=p] add trollgetarget

execute if score @s f3_attacktime matches ..0 run function ttt:finale/phase1/attack_charging_convert