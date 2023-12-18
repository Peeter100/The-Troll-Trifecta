execute if entity @s[scores={am_gametimer=118}] run tellraw @a [{"text":"<","color":"white"},{"text":"Phone Guy","color":"#004661"},{"text":"> "},{"text":"Hello?","color":"#004661"}]
execute if entity @s[scores={am_gametimer=139}] run tellraw @a [{"text":"<","color":"white"},{"text":"Phone Guy","color":"#004661"},{"text":"> "},{"text":"Hello? Hello?","color":"#004661"}]
execute if entity @s[scores={am_gametimer=175}] run tellraw @a [{"text":"<","color":"white"},{"text":"Phone Guy","color":"#004661"},{"text":"> "},{"text":"Uh...","color":"#004661"}]
execute if entity @s[scores={am_gametimer=182}] run tellraw @a [{"text":"<","color":"white"},{"text":"Phone Guy","color":"#004661"},{"text":"> "},{"text":"The animatronic characters here...","color":"#004661"}]
execute if entity @s[scores={am_gametimer=219}] run tellraw @a [{"text":"<","color":"white"},{"text":"Phone Guy","color":"#004661"},{"text":"> "},{"text":"...do get a bit quirky at night...","color":"#004661"}]

execute if entity @s[scores={am_gametimer=259}] at @p[tag=amplayer] run playsound custom.t2s.markiplier.intro master @a ~ ~ ~ 1000
execute if entity @s[scores={am_gametimer=260}] run tellraw @a [{"text":"<","color":"white"},{"text":"Markiplier","color":"#FF3232"},{"text":"> "},{"text":"Be quiet!","color":"#FF3232"}]
execute if entity @s[scores={am_gametimer=275}] run tellraw @a [{"text":"<","color":"white"},{"text":"Markiplier","color":"#FF3232"},{"text":"> "},{"text":"I am the king of Five Nights at Freddy's and I will tell you how to survive.","color":"#FF3232"}]
execute if entity @s[scores={am_gametimer=347}] run tellraw @a [{"text":"<","color":"white"},{"text":"Markiplier","color":"#FF3232"},{"text":"> "},{"text":"Bonnie and Chica will come from the left and right doors.","color":"#FF3232"}]
execute if entity @s[scores={am_gametimer=401}] run tellraw @a [{"text":"<","color":"white"},{"text":"Markiplier","color":"#FF3232"},{"text":"> "},{"text":"If you hear breathing or see them near the door, close them for a few seconds until they leave!","color":"#FF3232"}]
execute if entity @s[scores={am_gametimer=494}] run tellraw @a [{"text":"<","color":"white"},{"text":"Markiplier","color":"#FF3232"},{"text":"> "},{"text":"Foxy will be coming down the corridor behind you.","color":"#FF3232"}]
execute if entity @s[scores={am_gametimer=543}] run tellraw @a [{"text":"<","color":"white"},{"text":"Markiplier","color":"#FF3232"},{"text":"> "},{"text":"If he gets close, turn on the lights to blind him and make him hide again.","color":"#FF3232"}]

execute if entity @s[scores={am_gametimer=619}] at @p[tag=amplayer] run playsound custom.t2s.mutahar.intro master @a ~ ~ ~ 1000
execute if entity @s[scores={am_gametimer=619}] run tellraw @a [{"text":"<","color":"white"},{"text":"Mutahar","color":"green"},{"text":"> "},{"text":"Your job here is to install a web browser on Linux,","color":"green"}]
execute if entity @s[scores={am_gametimer=684}] run tellraw @a [{"text":"<","color":"white"},{"text":"Mutahar","color":"green"},{"text":"> "},{"text":"which is a very complicated process.","color":"green"}]
execute if entity @s[scores={am_gametimer=732}] run tellraw @a [{"text":"<","color":"white"},{"text":"Mutahar","color":"green"},{"text":"> "},{"text":"Right-click the computer and click on the red icons to run the necessary commands.","color":"green"}]
execute if entity @s[scores={am_gametimer=817}] run tellraw @a [{"text":"<","color":"white"},{"text":"Mutahar","color":"green"},{"text":"> "},{"text":"If you see Freddy through the window, you need to be careful!","color":"green"}]
execute if entity @s[scores={am_gametimer=880}] run tellraw @a [{"text":"<","color":"white"},{"text":"Mutahar","color":"green"},{"text":"> "},{"text":"While he's there, you cannot use the computer.","color":"green"}]
execute if entity @s[scores={am_gametimer=938}] run tellraw @a [{"text":"<","color":"white"},{"text":"Mutahar","color":"green"},{"text":"> "},{"text":"He hates Linux.","color":"green"}]

execute if entity @s[scores={am_gametimer=975}] run scoreboard players enable @a[tag=amplayer] Game_Choice
execute if entity @s[scores={am_gametimer=975}] run tellraw @a [{"text":"<","color":"white"},{"text":"Mutahar","color":"green"},{"text":"> "},{"text":"Did you understand everything?","color":"green"}]
execute if entity @s[scores={am_gametimer=975}] run tellraw @a {"text":"[Continue]","color":"green","bold":true,"hoverEvent":{"action":"show_text","contents":[{"text":"Click to start the game!","color":"green","italic":false}]},"clickEvent":{"action":"run_command","value":"/trigger Game_Choice set 1"}}

execute if entity @s[scores={am_gametimer=975..999}] unless entity @a[tag=amplayer,scores={Game_Choice=0}] run function ttt:amogus/minigames/id10/choice_alt
execute if entity @s[scores={am_gametimer=999}] run scoreboard players set @s am_gametimer 998