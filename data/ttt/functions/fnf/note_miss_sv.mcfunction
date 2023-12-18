execute unless entity @s[tag=fnflyrics] run title @a title {"text":""}
execute if score @s fnf_mt matches 0..5 run scoreboard players add @s fnf_hp 6
execute if score @s fnf_mt matches 6..18 run scoreboard players add @s fnf_hp 9
execute if score @s fnf_mt matches 19..39 run scoreboard players add @s fnf_hp 13
execute if score @s fnf_mt matches 40.. run scoreboard players add @s fnf_hp 17
scoreboard players add @s fnf_mt 20
scoreboard players add @s fnf_misses 1
execute store result bossbar minecraft:fnfhp value run scoreboard players get @s fnf_hp