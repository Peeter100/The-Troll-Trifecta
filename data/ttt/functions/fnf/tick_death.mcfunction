effect give @a blindness 3 0 true
execute as @a[team=p,tag=!fnfplayer] run spectate @p[tag=fnfplayer]
execute as @a[tag=!testing,team=!s] at @s unless entity @s[x=-4,y=25,z=160,dx=2,dy=2,dz=2] run tp @s -3 25 161
kill @e[tag=fnfarrow]
stopsound @a master custom.fnf.mischievous_world

execute if entity @s[scores={acttimer=5016}] at @p[tag=fnfplayer] run playsound custom.act1.va.fnf_death master @a ~ ~ ~ 1000
execute if entity @s[scores={acttimer=5016}] run tellraw @a [{"text":"<","color":"white"},{"text":"Peeter100","color":"gold"},{"text":"> "},{"text":"Heh.","color":"gold"}]
execute if entity @s[scores={acttimer=5028}] run tellraw @a [{"text":"<","color":"white"},{"text":"Peeter100","color":"gold"},{"text":"> "},{"text":"Looks like someone doesn't know how directions work!","color":"gold"}]
execute if entity @s[scores={acttimer=5077}] run tellraw @a [{"text":"<","color":"white"},{"text":"Peeter100","color":"gold"},{"text":"> "},{"text":"*laughing* Isn't that left-?","color":"gold"}]
execute if entity @s[scores={acttimer=5105}] run tellraw @a [{"text":"<","color":"white"},{"text":"Peeter100","color":"gold"},{"text":"> "},{"text":"Wait...","color":"gold"}]
execute if entity @s[scores={acttimer=5105}] run scoreboard players set @s fnf_hp 50
execute if entity @s[scores={acttimer=5105}] store result bossbar minecraft:fnfhp value run scoreboard players get @e[tag=sv,limit=1] fnf_hp

execute if entity @s[scores={acttimer=5119,actunlocked=1}] run scoreboard players set @a[team=p] Game_Choice 1

execute if entity @s[scores={acttimer=5121}] unless entity @a[scores={Game_Choice=1}] run scoreboard players enable @a[tag=fnfplayer] Game_Choice
execute if entity @s[scores={acttimer=5121}] unless entity @a[scores={Game_Choice=1}] run tellraw @a [{"text":"[Continue to Act 2]","color":"green","bold":true,"hoverEvent":{"action":"show_text","contents":[{"text":"Die and get sent to Act 2","color":"green","italic":false}]},"clickEvent":{"action":"run_command","value":"/trigger Game_Choice set 1"}},{"text":"\n"},{"text":"[Retry]","color":"red","bold":true,"hoverEvent":{"action":"show_text","contents":[{"text":"Retry from the beginning of the Friday Night Funkin' section.","color":"red","italic":false}]},"clickEvent":{"action":"run_command","value":"/trigger Game_Choice set 2"}}]

execute if entity @a[tag=fnfplayer,scores={Game_Choice=1}] run function ttt:fnf/afterfunk_death
execute if entity @a[tag=fnfplayer,scores={Game_Choice=2}] run function ttt:fnf/afterfunk_revive

execute if entity @a[tag=fnfplayer,scores={Game_Choice=1..}] run scoreboard players reset @a Game_Choice