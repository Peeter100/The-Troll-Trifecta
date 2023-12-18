scoreboard players set @s actpart 1
scoreboard players set @s act 2
scoreboard players set @s[scores={actunlocked=..1}] actunlocked 2
execute unless entity @a[team=p,tag=clashplayer] run tag @s add hijackdeathseq