execute if entity @e[tag=sv,scores={am_ventid=1..}] run tellraw @a {"text":"You cannot start sabotages while in a vent!","color":"red"}
scoreboard players reset @a Sabotage_ID
scoreboard players enable @a[tag=amplayer] Sabotage_ID