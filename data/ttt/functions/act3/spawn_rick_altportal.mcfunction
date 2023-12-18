fill -13 22 175 -13 23 175 lime_concrete_powder destroy
particle poof -13 23.0 175.0 .2 .5 .2 .5 200 force @a
playsound custom.t2s.rick.getin master @a -13 23.0 175.0 1000
tellraw @a [{"text":"<","color":"white"},{"text":"Rick","color":"aqua"},{"text":"> "},{"text":"Get in.","color":"aqua"}]