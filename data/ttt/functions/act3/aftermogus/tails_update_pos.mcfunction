execute unless entity @e[type=armor_stand,tag=tailshead,tag=donttp] run schedule function ttt:act3/aftermogus/tails_walkidle1 2t replace
tag @e[type=armor_stand,tag=tailshead] add donttp

#execute positioned ~ 30 ~ if block ~ ~ ~ #ttt:full_passable anchored eyes run tp @e[type=armor_stand,tag=tails] ~ ~ ~ facing entity @p[team=p] eyes
#execute positioned ~ 30 ~ if block ~ ~ ~ #slabs[type=bottom] anchored eyes run tp @e[type=armor_stand,tag=tails] ~ ~.5 ~ facing entity @p[team=p] eyes
#execute positioned ~ 30 ~ if block ~ ~ ~ #stairs anchored eyes run tp @e[type=armor_stand,tag=tails] ~ ~1 ~ facing entity @p[team=p] eyes
#execute positioned ~ 30 ~ unless block ~ ~ ~ #ttt:passable run tp @e[type=armor_stand,tag=tails] ^ ^ ^2.25

execute positioned ~ 29.875 ~ if block ~ 30 ~ #ttt:full_passable anchored eyes run tp @e[type=armor_stand,tag=tails] ~ ~ ~ facing entity @p[team=p] eyes
execute positioned ~ 30.375 ~ if block ~ 30 ~ #slabs[type=bottom] anchored eyes run tp @e[type=armor_stand,tag=tails] ~ ~ ~ facing entity @p[team=p] eyes
execute positioned ~ 30.875 ~ if block ~ 30 ~ #stairs anchored eyes run tp @e[type=armor_stand,tag=tails] ~ ~ ~ facing entity @p[team=p] eyes
execute unless block ~ 30 ~ #ttt:passable positioned ^ ^ ^2.25 positioned ~ 29.875 ~ anchored eyes run tp @e[type=armor_stand,tag=tails] ~ ~ ~ facing entity @p[team=p] eyes

schedule function ttt:act3/aftermogus/tails_allow_head_update 5t replace