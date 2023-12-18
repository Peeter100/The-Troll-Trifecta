effect clear @s regeneration
# effect give @s instant_health 1 100 true	<-- THIS WORKS ON VANILLA BUT DOESN'T ON FORGE FOR SOME REASON (moved to tick instead)
effect give @s resistance 1 2 true
effect give @s instant_damage 1 3 true
tag @s add noheal
tag @s add 1hpchallenge
particle dust 0.8 0.8 1 1 ~ ~1 ~ .4 .5 .4 0 50 normal @a
tellraw @s {"text":"You feel a very cold breeze which weakens you and hinders you from healing.","color":"aqua"}
playsound minecraft:entity.player.hurt_freeze master @a ~ ~ ~

#execute as @e[tag=sv] at @s if entity @s[scores={cr_beeninbattle=2..,dialogueseq=0}] run scoreboard players set @s dialogueseq -2