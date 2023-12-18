execute if score @s f3_attackid matches 0 run tag @s add targetboss
execute if score @s f3_attackid matches 2 if predicate ttt:15ch run tag @s add targetboss
execute if score @s f3_attackid matches 4 if predicate ttt:15ch run tag @s add targetboss
execute if predicate ttt:3ch run tag @s add targetboss

execute unless entity @s[tag=targetboss] at 00000001-0000-0000-0000-000000000000 as @e[tag=bossmob,limit=1,sort=furthest] at @s anchored eyes facing entity 00000004-0000-0000-0000-000000000000 eyes run function ttt:finale/phase1/p100_mobkill
execute if entity @s[tag=targetboss] as 00000001-0000-0000-0000-000000000000 at @s run function ttt:finale/phase1/p100_mobattack_trollge

tag @s remove targetboss