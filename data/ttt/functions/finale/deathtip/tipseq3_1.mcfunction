tag 00000001-0000-0000-0000-000000000000 add shutthefuckup
execute at @r[team=p] run playsound custom.finale.phase1.hintseq2 master @a ~ ~ ~ 1000
tellraw @a [{"text":"<","color":"white"},{"text":"Peeter100","color":"gold"},{"text":"> "},{"text":"You can use your shield to block Trollge's attacks!","color":"gold"}]
schedule function ttt:finale/deathtip/enable_death_text 60t replace