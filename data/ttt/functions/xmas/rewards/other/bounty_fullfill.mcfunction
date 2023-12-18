playsound custom.act1.sniper.shoot master @a ~ ~ ~ 1000
tellraw @a {"text":"EXECUTED - BOUNTY CLAIMED","color":"red","bold":true}
scoreboard players set @s deathreason 62
kill @s