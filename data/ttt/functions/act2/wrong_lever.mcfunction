scoreboard players set @p[team=p] deathreason 31
execute as @a[team=p,scores={deathreason=31}] at @s run summon lightning_bolt
kill @p[team=p]