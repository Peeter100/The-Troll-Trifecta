# Executes as & at all "amogai"s in vis-range of playerloc

execute anchored eyes facing entity @e[type=armor_stand,tag=playerloc,limit=1] feet run function ttt:amogus/ai/playerloc/base_check_raycast
execute if entity @s[tag=cansee] unless entity @s[tag=witness_location] run function ttt:amogus/ai/playerloc/base_cansee