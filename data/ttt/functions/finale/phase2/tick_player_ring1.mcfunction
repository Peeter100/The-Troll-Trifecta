execute if score @s ring_energy matches 40.. run title @s actionbar [{"text":"Energy: ||||","color":"#006FFF"},{"text":"||||||","color":"#00214D"}]
execute if score @s ring_energy matches 30..39 run title @s actionbar [{"text":"Energy: |||","color":"#006FFF"},{"text":"|||||||","color":"#00214D"}]
execute if score @s ring_energy matches 20..29 run title @s actionbar [{"text":"Energy: ||","color":"#006FFF"},{"text":"||||||||","color":"#00214D"}]
execute if score @s ring_energy matches 10..19 run title @s actionbar [{"text":"Energy: |","color":"#006FFF"},{"text":"|||||||||","color":"#00214D"}]
#execute if score @s ring_energy matches ..9 run title @s actionbar [{"text":"Energy: ","color":"gray"},{"text":"||||||||||","color":"dark_gray"}]
execute if score @s ring_energy matches ..9 run title @s actionbar [{"text":"NO ENERGY, KILL EVOKERS AND SPAWN HEALING ORBS","color":"gray","bold":true}]