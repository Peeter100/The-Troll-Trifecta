execute at @r[team=p] run playsound custom.finale.phase1.intro master @a ~ ~ ~ 1000
tellraw @a [{"text":"<","color":"white"},{"text":"Peeter100","color":"gold"},{"text":"> "},{"text":"My fire beam can sometimes transform mobs into ","color":"gold"},{"text":"healing orbs","color":"red"},{"text":"!","color":"gold"}]
schedule function ttt:finale/deathtip/tipseq1_2 76t replace