execute anchored eyes facing entity 00000004-0000-0000-0000-000000000000 eyes positioned ^ ^ ^1 run function ttt:finale/phase1/p100_mobkill_raycast
effect give @s instant_damage 1 0 true
execute as 00000004-0000-0000-0000-000000000000 at @s run function ttt:finale/phase1/boss_hit
function ttt:finale/phase1/p100_anim_fire
playsound entity.generic.explode master @a ~ ~ ~ 2 2
particle explosion ~ ~1 ~ .2 .5 .2 0 5 normal @a