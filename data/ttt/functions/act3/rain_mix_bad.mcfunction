# DON'T BREAK BAD

playsound entity.generic.explode master @a ~ ~ ~ 1000
particle explosion_emitter ~ ~ ~ 0 0 0 0 1 force @a
scoreboard players set @a[team=p] deathreason 44
kill @p[team=p]
kill @e[type=item]