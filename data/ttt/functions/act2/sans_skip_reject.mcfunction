tp @a[team=p,scores={hp=1..}] -31 30 39 180 0
playsound entity.enderman.teleport master @a -31 31 39 1000
particle minecraft:reverse_portal -31 31 39 .2 .5 .2 0.15 100 force @a
#give @r[team=p,scores={hp=1..}] stone_axe{CanDestroy:["minecraft:oak_log"],display:{Name:'{"text":"Stone Axe","italic":false}',Lore:['[{"text":"Can break ","color":"gray","italic":false},{"text":"oak logs","color":"yellow"},{"text":"."}]','[{"text":"Also good for ","color":"gray","italic":false},{"text":"other","color":"red","italic":true},{"text":" reasons."}]']},HideFlags:46,Unbreakable:1b,axe:1b}

stopsound @a master
tellraw @a [{"text":"<"},{"text":"Sans","color":"#C4E2FF"},{"text":"> "},{"text":"looking for secrets i suppose?","color":"#C4E2FF","font":"sans"}]
execute as @r[team=p] at @s run playsound custom.act2.sans.speech_mid master @a ~ ~ ~ 1000
schedule function ttt:act2/sans_skip_reject_p2 30t replace

scoreboard players reset @a Game_Choice