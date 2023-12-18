# Executes as & at all "amogai"s in vis-range of dead body

execute anchored eyes facing entity @e[type=armor_stand,tag=amogdead,limit=1,sort=nearest] feet run function ttt:amogus/ai/dead_bodies/base_check_raycast
execute if entity @s[tag=canseebody] run function ttt:amogus/ai/dead_bodies/base_cansee