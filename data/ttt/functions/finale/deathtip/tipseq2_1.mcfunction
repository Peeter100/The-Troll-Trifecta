tag 00000001-0000-0000-0000-000000000000 add shutthefuckup
execute at @r[team=p] run playsound custom.finale.phase1.hintseq1 master @a ~ ~ ~ 1000
tellraw @a [{"text":"<","color":"white"},{"text":"Peeter100","color":"gold"},{"text":"> "},{"text":"Trollge heals every time you die!","color":"gold"}]
schedule function ttt:finale/deathtip/tipseq2_2 33t replace