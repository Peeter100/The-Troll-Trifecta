tag 00000001-0000-0000-0000-000000000000 add shutthefuckup
execute at @r[team=p] run playsound custom.finale.phase2.intro1 master @a ~ ~ ~ 1000
tellraw @a [{"text":"<","color":"white"},{"text":"Peeter100","color":"gold"},{"text":"> "},{"text":"Alright, big guy!","color":"gold"}]
schedule function ttt:finale/deathtip/tipseq5_2 19t replace