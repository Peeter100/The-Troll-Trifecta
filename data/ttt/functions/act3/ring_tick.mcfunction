scoreboard players add @s[scores={ring_energy=..99}] ring_energy 1
scoreboard players remove @s[scores={ring_charge=1..}] ring_charge 1

execute if entity @s[scores={ring_charge=100..}] run function ttt:act3/ring_dash

scoreboard players set @s[scores={ring_charge=100}] ring_charge 0

execute if entity @s[scores={ring_energy=100..}] run title @s actionbar [{"text":"Energy: ||||||||||","color":"#006FFF"}]
execute if entity @s[scores={ring_energy=90..99}] run title @s actionbar [{"text":"Energy: |||||||||","color":"#006FFF"},{"text":"|","color":"#00214D"}]
execute if entity @s[scores={ring_energy=80..89}] run title @s actionbar [{"text":"Energy: ||||||||","color":"#006FFF"},{"text":"||","color":"#00214D"}]
execute if entity @s[scores={ring_energy=70..79}] run title @s actionbar [{"text":"Energy: |||||||","color":"#006FFF"},{"text":"|||","color":"#00214D"}]
execute if entity @s[scores={ring_energy=60..69}] run title @s actionbar [{"text":"Energy: ||||||","color":"#006FFF"},{"text":"||||","color":"#00214D"}]
execute if entity @s[scores={ring_energy=50..59}] run title @s actionbar [{"text":"Energy: |||||","color":"#006FFF"},{"text":"|||||","color":"#00214D"}]
execute if entity @s[scores={ring_energy=40..49}] run title @s actionbar [{"text":"Energy: ||||","color":"gray"},{"text":"||||||","color":"dark_gray"}]
execute if entity @s[scores={ring_energy=30..39}] run title @s actionbar [{"text":"Energy: |||","color":"gray"},{"text":"|||||||","color":"dark_gray"}]
execute if entity @s[scores={ring_energy=20..29}] run title @s actionbar [{"text":"Energy: ||","color":"gray"},{"text":"||||||||","color":"dark_gray"}]
execute if entity @s[scores={ring_energy=10..19}] run title @s actionbar [{"text":"Energy: |","color":"gray"},{"text":"|||||||||","color":"dark_gray"}]
execute if entity @s[scores={ring_energy=..9}] run title @s actionbar [{"text":"Energy: ","color":"gray"},{"text":"||||||||||","color":"dark_gray"}]