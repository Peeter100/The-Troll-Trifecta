playsound entity.player.levelup master @s ~ ~ ~ 1000
particle happy_villager ~ ~1 ~ 1 1 1 0 100 force @s
title @s reset
title @s clear
#title @s title {"text":"The Troll Trifecta","color":"yellow","bold":true}
title @s actionbar {"text":""}
scoreboard players set @s ms_seqid 0
scoreboard players set @s verified 2
tellraw @s {"text":"Verified!","color":"green"}
tellraw @s [{"text":"Welcome to ","color":"yellow"},{"text":"The Troll Trifecta","bold":true},{"text":"! New in v1.1:\n- added the "},{"text":"Christmas Chaos","color":"red"},{"text":" gamemode to "},{"text":"Extras","color":"gold"},{"text":"\n- added a lot more shortcuts and tips to Act 1 & 2\n- the Sniper isn't as bloodthirsty anymore\n- reworked a puzzle in Act 3 to be harder to fail\n- added debugging utilities and the Map Setup\n- made a few features more consistent\n- other small quality of life improvements"}]
advancement grant @s only ttt:root
advancement grant @s only ttt:progression-invis
advancement grant @s only ttt:bonus-invis
advancement grant @s only ttt:secret-invis
#tag @s add parsed_ms