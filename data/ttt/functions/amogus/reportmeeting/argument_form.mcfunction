# If there are any major crewmate testimonies that
# will instantly kill the player, then switch to emergency instead
# (for the Fight/Surrender cutscene)

execute if entity @e[type=villager,tag=amogai,tag=noticedmurder] run function ttt:amogus/emergencymeeting/argument_murder_direct_witness
execute if entity @e[type=villager,tag=amogai,tag=noticedventing] if score @s acttimer matches 3020..3029 run function ttt:amogus/emergencymeeting/argument_venting

execute if score @s acttimer matches 3020..3029 run function ttt:amogus/reportmeeting/argument_recap