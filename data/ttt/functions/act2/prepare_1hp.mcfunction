effect clear @s regeneration
execute if entity @s[nbt={Health:20.0f}] run function ttt:act2/begin_1hp
execute unless entity @s[tag=1hpchallenge] run effect give @s instant_health 1 100 true