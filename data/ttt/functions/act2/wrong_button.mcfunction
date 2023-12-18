#playsound custom.act2.thud master @a ~ ~ ~ 1000
#playsound custom.act2.bozo master @a ~ ~ ~ 1000
#tag @e[tag=sv] add silentdeath

scoreboard players add @s cr_buttondeaths 1
execute if score @s cr_buttondeaths matches 3.. as @p[team=p] run function ttt:act2/wrong_button_tellraw

scoreboard players set @p[team=p] deathreason 22
kill @p[team=p]