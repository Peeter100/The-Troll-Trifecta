scoreboard players remove @s am_crewmates 1
scoreboard players add @s am_susscore 9
kill @e[type=armor_stand,tag=amogalive,limit=1,sort=random]
execute if score @s am_crewmates > @s am_lvl_crewmates run function ttt:amogus/preload_killcrewmates