tag 00000001-0000-0000-0000-000000000000 add shutthefuckup
execute at @r[team=p] run playsound custom.finale.phase2.hintseq3 master @a ~ ~ ~ 1000
tellraw @a [{"text":"<","color":"white"},{"text":"Peeter100","color":"gold"},{"text":"> "},{"text":"Prioritize your health and always save some spindash energy to run away if needed!","color":"gold"}]
schedule function ttt:finale/deathtip/enable_death_text 94t replace