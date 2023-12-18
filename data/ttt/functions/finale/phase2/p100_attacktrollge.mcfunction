playsound entity.blaze.shoot master @a ~ ~ ~ 1000 2
item replace entity @s weapon.offhand with emerald{CustomModelData:106}
tp @s ~ ~ ~ facing entity 00000001-0000-0000-0000-000000000000 eyes
execute if entity @s[tag=p2transition] run function ttt:update_head_pose
execute at 00000001-0000-0000-0000-000000000000 anchored eyes facing entity @s eyes positioned ^ ^ ^-10 run function ttt:finale/phase2/p100_attack_raycast
execute unless entity @s[tag=p2transition] if predicate ttt:10ch run schedule function ttt:finale/phase2/p100_attackcancel_schedule 2t replace
execute as 00000001-0000-0000-0000-000000000000 at @s run function ttt:finale/phase2/trollge_dodgeattack

execute unless entity @s[tag=p2transition] as 00000001-0000-0000-0000-000000000000 positioned ~ 23.5 ~ if entity @s[distance=..9] as @e[type=marker,tag=sv,limit=1] run function ttt:finale/phase2/attack_flybash_convert