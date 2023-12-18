tag 00000001-0000-0000-0000-000000000000 add shutthefuckup
execute at @r[team=p] run playsound custom.finale.phase2.hintseq1 master @a ~ ~ ~ 1000
tellraw @a [{"text":"<","color":"white"},{"text":"Peeter100","color":"gold"},{"text":"> "},{"text":"Just so you know,","color":"gold"}]
schedule function ttt:finale/deathtip/tipseq7_2 17t replace