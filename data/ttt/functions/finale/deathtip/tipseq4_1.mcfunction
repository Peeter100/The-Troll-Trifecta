tag 00000001-0000-0000-0000-000000000000 add shutthefuckup
execute at @r[team=p] run playsound custom.finale.phase1.hintseq3 master @a ~ ~ ~ 1000
tellraw @a [{"text":"<","color":"white"},{"text":"Peeter100","color":"gold"},{"text":"> "},{"text":"Getting hit by mobs with axes disables your shield!","color":"gold"}]
schedule function ttt:finale/deathtip/tipseq4_2 66t replace