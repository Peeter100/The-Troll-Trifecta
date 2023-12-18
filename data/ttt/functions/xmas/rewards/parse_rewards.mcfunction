#say parse
execute if entity @s[nbt={Item:{tag:{dropType:1s}}}] run function ttt:xmas/rewards/items/base
execute if entity @s[nbt={Item:{tag:{dropType:2s}}}] run function ttt:xmas/rewards/mobs/base
execute if entity @s[nbt={Item:{tag:{dropType:3s}}}] run function ttt:xmas/rewards/potions/base
execute if entity @s[nbt={Item:{tag:{dropType:4s}}}] run function ttt:xmas/rewards/other/base

execute as @p[tag=needsgift] if predicate ttt:15ch run function ttt:xmas/rewards/parse_rewards_more

tag @a remove needsgift
kill @s