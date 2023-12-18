effect give @s instant_health 1 0 true
effect give @s resistance 1 2 false
playsound entity.arrow.hit_player master @s ~ ~ ~ 1
scoreboard players add @s ring_energy 25
execute if score @s ring_energy matches 101.. run scoreboard players set @s ring_energy 100