execute at @p[tag=amplayer] run tp @p[tag=amplayer] ~ ~ ~ facing entity @s eyes
execute at @p[tag=amplayer] rotated as @p[tag=amplayer] run tp @s ^ ^ ^1 facing entity @p[tag=amplayer] eyes
tp @e[type=chest_minecart,tag=linux] -24 0 97.55 90 0
playsound custom.act3.fnaf.jumpscare master @a ~ ~ ~ 0.9
# scoreboard players set @e[tag=sv] am_gametimer 1083
tag @e[tag=sv] add silentdeath

kill @p[tag=amplayer]