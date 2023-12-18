scoreboard players set @s dialogueseq 2
scoreboard players set @s f3_deaths 0
scoreboard players set @s f3_deathhintseq 0

schedule clear ttt:finale/phase1/p100_mobattack_schedule
schedule clear ttt:finale/phase1/p100_targetchange
schedule function ttt:finale/phase2/switchdir_p100 15t replace
schedule function ttt:finale/phase2/switchdir_trollge 15t replace
schedule function ttt:finale/phase2/remove_p2transition 18t replace

kill @e[type=marker,tag=bbolt]
effect give 00000001-0000-0000-0000-000000000000 resistance 99999 255 true
tag 00000004-0000-0000-0000-000000000000 add p2transition
function ttt:finale/phase2/attack_p100fire_convert

function ttt:finale/deathtip/tipseq5_1