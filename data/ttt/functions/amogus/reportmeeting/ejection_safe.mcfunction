tp @a[tag=amplayer] 33 -3 102 -75 35
title @a times 10 40 10
title @a title {"text":"Noone was ejected.","color":"white"}
# playsound custom.amogus.text master @a 33 -3 102 1000
# schedule function ttt:amogus/stopsound_text 1s replace
setblock 35 2 101 air
setblock 35 2 103 air
tag @e[type=villager,tag=amogai] remove witness_location
tag @e[type=villager,tag=amogai] remove witness_door
tag @e[type=villager,tag=amogai] remove noticedmurder
tag @e[type=villager,tag=amogai] remove canseebody
tag @e[type=villager,tag=amogai] remove emergencybutton
kill @e[type=armor_stand,tag=amogdead]