#tag @e[type=villager,tag=wguntarget,limit=1,sort=nearest] add wgunangry
#scoreboard players set @s deathreason 60
scoreboard players set @s deathreason 2137
tellraw @a [{"selector":"@s"},{"text":" slightly inconvenienced ","color":"white"},{"selector":"@e[type=villager,tag=wguntarget,limit=1,sort=nearest]","color":"yellow"}]
kill @s
execute at @s run playsound custom.act1.hey master @a ~ ~ ~ 1000
execute at @s run summon lightning_bolt
execute at @s run particle explosion_emitter ~ ~1 ~ 0 0 0 0 1 force @a