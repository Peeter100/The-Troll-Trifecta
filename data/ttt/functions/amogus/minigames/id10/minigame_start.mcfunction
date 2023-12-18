tp @a -24 21 98 180 0
scoreboard players set @s am_gamescore2 100
scoreboard players enable @a[tag=amplayer] Game_Choice
execute at @p[tag=amplayer] run playsound custom.act3.phonecall master @a ~ ~ ~ 1000
execute at @p[tag=amplayer] run playsound custom.act3.fnaf.ring master @a ~ ~ ~ 1000
tellraw @a [{"text":"Hey bro, you got a phone call!\n","color":"yellow"},{"text":"[Answer (play tutorial)]","color":"green","bold":true,"hoverEvent":{"action":"show_text","contents":[{"text":"Click to answer the phone call!","color":"green","italic":false}]},"clickEvent":{"action":"run_command","value":"/trigger Game_Choice set 1"}},{"text":"\n","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"green","italic":false}]}},{"text":"[Hang Up (skip tutorial)]","color":"red","bold":true,"hoverEvent":{"action":"show_text","contents":[{"text":"Click to hang up!","color":"red","italic":false}]},"clickEvent":{"action":"run_command","value":"/trigger Game_Choice set 2"}}]
function ttt:amogus/minigames/id10/disable_fnaf_mapstart