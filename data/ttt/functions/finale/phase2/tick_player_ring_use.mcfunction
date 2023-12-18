scoreboard players add @s ring_charge 6

execute if score @s ring_charge matches ..6 run playsound custom.act3.sonic.spindash_charge master @s ~ ~ ~ 1000 1
execute if score @s ring_charge matches 7..11 run playsound custom.act3.sonic.spindash_charge master @s ~ ~ ~ 1000 1.05
execute if score @s ring_charge matches 12..15 run playsound custom.act3.sonic.spindash_charge master @s ~ ~ ~ 1000 1.1
execute if score @s ring_charge matches 16.. run stopsound @s master custom.act3.sonic.spindash_charge
execute if score @s ring_charge matches 16.. run playsound custom.act3.sonic.spindash_launch master @s ~ ~ ~ 1000
execute if score @s ring_charge matches 16.. run effect give @s resistance 1 8 true
execute if score @s ring_charge matches 16.. run scoreboard players remove @s ring_energy 20
execute if score @s ring_charge matches 16.. run scoreboard players set @s ring_charge 118

scoreboard players set @s rc 0