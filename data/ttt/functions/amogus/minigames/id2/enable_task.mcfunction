setblock 62 30 75 air
setblock 63 30 74 air
setblock 64 30 75 air
setblock 63 30 76 air
setblock 63 31 75 air
tag @a[tag=amplayer] add ignoreinventory
item replace entity @a[tag=amplayer] inventory.24 with carrot_on_a_stick{display:{Name:'{"text":"That DAMN fourth chaos emerald","color":"white","italic":false}'},CustomModelData:39,damnemerald:1b} 1
tag @e[tag=shadowbody] remove forcegun
tellraw @a [{"text":""},{"text":"Current Task:\n","color":"yellow","bold":true},{"text":"Find that DAMN fourth chaos emerald!","color":"light_purple"},{"text":"\nJumping & Sprinting: ","color":"yellow","italic":true},{"text":"Enabled","color":"green","italic":true}]
execute as @r[tag=amplayer] at @s run playsound entity.player.levelup master @a ~ ~ ~ 1000
scoreboard players set @s am_gamescore4 101
scoreboard players set @s am_seenshadow 1