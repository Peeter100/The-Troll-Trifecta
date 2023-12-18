# Executes as & at all "amogai"s in vis-range of player

execute anchored eyes facing entity @p[tag=amplayer] eyes run function ttt:amogus/ai/player/base_check_raycast
execute if entity @s[tag=cansee] unless entity @s[tag=witness_location] run function ttt:amogus/ai/player/base_cansee