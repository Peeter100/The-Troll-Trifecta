execute as @e[tag=amogalive,distance=0..4,limit=1,sort=nearest] at @s run function ttt:amogus/crewmate_die
playsound custom.amogus.kill master @a ~ ~ ~ 1000

execute as @a[tag=amplayer,tag=am_cankill] at @s run function ttt:amogus/slot_disable_kill
#scoreboard players set @e[type=marker,tag=sv] am_killcool 600
execute as @e[type=marker,tag=sv] run scoreboard players operation @s am_killcool = @s am_lvl_killcool