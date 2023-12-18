tag @e[tag=killdetect] remove done
tp @e[tag=killdetect] ~ 1.0 ~
execute as @e[tag=killdetect] at @s run tp @s ~ ~ ~ facing entity @e[tag=amogalive,distance=0..4,limit=1,sort=nearest]

execute as @e[tag=killdetect,tag=!done] at @s positioned ^ ^ ^0.25 run function ttt:amogus/near_crewmate_check
execute as @e[tag=killdetect,tag=!done] at @s positioned ^ ^ ^0.5 run function ttt:amogus/near_crewmate_check
execute as @e[tag=killdetect,tag=!done] at @s positioned ^ ^ ^0.75 run function ttt:amogus/near_crewmate_check
execute as @e[tag=killdetect,tag=!done] at @s positioned ^ ^ ^1 run function ttt:amogus/near_crewmate_check

execute as @e[tag=killdetect,tag=!done] at @s positioned ^ ^ ^1.25 run function ttt:amogus/near_crewmate_check
execute as @e[tag=killdetect,tag=!done] at @s positioned ^ ^ ^1.5 run function ttt:amogus/near_crewmate_check
execute as @e[tag=killdetect,tag=!done] at @s positioned ^ ^ ^1.75 run function ttt:amogus/near_crewmate_check
execute as @e[tag=killdetect,tag=!done] at @s positioned ^ ^ ^2 run function ttt:amogus/near_crewmate_check

execute as @e[tag=killdetect,tag=!done] at @s positioned ^ ^ ^2.25 run function ttt:amogus/near_crewmate_check
execute as @e[tag=killdetect,tag=!done] at @s positioned ^ ^ ^2.5 run function ttt:amogus/near_crewmate_check
execute as @e[tag=killdetect,tag=!done] at @s positioned ^ ^ ^2.75 run function ttt:amogus/near_crewmate_check
execute as @e[tag=killdetect,tag=!done] at @s positioned ^ ^ ^3 run function ttt:amogus/near_crewmate_check

execute as @e[tag=killdetect,tag=!done] at @s positioned ^ ^ ^3.25 run function ttt:amogus/near_crewmate_check
execute as @e[tag=killdetect,tag=!done] at @s positioned ^ ^ ^3.5 run function ttt:amogus/near_crewmate_check
execute as @e[tag=killdetect,tag=!done] at @s positioned ^ ^ ^3.75 run function ttt:amogus/near_crewmate_check
execute as @e[tag=killdetect,tag=!done] at @s positioned ^ ^ ^4 run function ttt:amogus/near_crewmate_check

## execute as @a[tag=amplayer,tag=am_cankill] at @s if entity @e[tag=killdetect,tag=!done] run function ttt:amogus/slot_disable_kill