tag @e[type=armor_stand,tag=tailshead] add donttp

execute positioned ~ 31.5 ~ if block ~ ~ ~ #ttt:full_passable anchored eyes run tp @e[type=armor_stand,tag=tails] ~ ~ ~ facing entity @p[team=p] eyes
#tp @e[type=armor_stand,tag=tails] ~ 30 ~ facing entity @p[team=p] eyes

schedule function ttt:act3/aftermogus/tails_allow_head_update 5t replace