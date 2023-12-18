execute if entity @s[tag=sanshead] if entity @a[tag=importantsans,team=p,distance=0..9] anchored eyes run tp @s ~ ~ ~ facing entity @p[team=p,tag=importantsans] eyes
execute if entity @s[tag=sanshead] unless entity @a[tag=importantsans,team=p,distance=0..9] anchored eyes run tp @s ~ ~ ~ facing entity @p[team=p,distance=0..12] eyes
execute if entity @s[tag=sanshead] run function ttt:update_head_pose

execute if entity @s[tag=sansbody] run scoreboard players add @s npcbodytp 1
execute if entity @s[tag=sansbody,scores={npcbodytp=10..}] run tp @s @e[type=armor_stand,tag=sanshead,limit=1]
execute if entity @s[tag=sansbody,scores={npcbodytp=10..}] run scoreboard players set @s npcbodytp 0