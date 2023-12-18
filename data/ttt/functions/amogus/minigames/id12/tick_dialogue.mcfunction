scoreboard players add @s am_gametimer 1

execute if score @s am_gametimer matches 15 if score @s am_ricktask matches 1.. run scoreboard players set @s am_gametimer 121

execute if score @s am_gametimer matches 20 at @r[tag=amplayer] run playsound custom.t2s.rick.am_intro_long master @a ~ ~ ~ 1000
execute if score @s am_gametimer matches 20 run tellraw @a [{"text":"<","color":"white"},{"text":"Rick","color":"aqua"},{"text":"> "},{"text":"What?","color":"aqua"}]
execute if score @s am_gametimer matches 31 run tellraw @a [{"text":"<","color":"white"},{"text":"Rick","color":"aqua"},{"text":"> "},{"text":"I have to give you a task?","color":"aqua"}]
execute if score @s am_gametimer matches 58 run tellraw @a [{"text":"<","color":"white"},{"text":"Rick","color":"aqua"},{"text":"> "},{"text":"Alright,","color":"aqua"}]
execute if score @s am_gametimer matches 66 run tellraw @a [{"text":"<","color":"white"},{"text":"Rick","color":"aqua"},{"text":"> "},{"text":"I'll make it easy so you can complete this map faster.","color":"aqua"}]

execute if score @s am_gametimer matches 121 at @r[tag=amplayer] run playsound custom.t2s.rick.am_intro_short master @a ~ ~ ~ 1000
execute if score @s am_gametimer matches 121 run tellraw @a [{"text":"<","color":"white"},{"text":"Rick","color":"aqua"},{"text":"> "},{"text":"Go in there and buy me a drink.","color":"aqua"}]
execute if score @s am_gametimer matches 158 run tellraw @a [{"text":"<","color":"white"},{"text":"Rick","color":"aqua"},{"text":"> "},{"text":"I would say which one but this is a kids game, so any will do.","color":"aqua"}]

execute if score @s am_gametimer matches 230 run tellraw @a [{"text":""},{"text":"Current Task:\n","color":"yellow","bold":true},{"text":"Buy Rick a drink!","color":"light_purple"},{"text":"\nJumping & Sprinting: ","color":"yellow","italic":true},{"text":"Disabled","color":"red","italic":true}]
execute if score @s am_gametimer matches 230 at @r[tag=amplayer] run playsound entity.player.levelup master @a ~ ~ ~ 1000
execute if score @s am_gametimer matches 230 run scoreboard players set @s[scores={am_ricktask=0}] am_ricktask 1
execute if score @s am_gametimer matches 230 run scoreboard players set @s am_gametimer 9999

execute if score @s am_gametimer matches 273 run tellraw @a [{"text":"<","color":"white"},{"text":"Rick","color":"aqua"},{"text":"> "},{"text":"Ask the cashier, or something.","color":"aqua"}]
execute if score @s am_gametimer matches 304 run tellraw @a [{"text":"<","color":"white"},{"text":"Rick","color":"aqua"},{"text":"> "},{"text":"I really don't care.","color":"aqua"}]
execute if score @s am_gametimer matches 304 run scoreboard players enable @a[tag=amplayer] Game_Choice
execute if score @s am_gametimer matches 304 run scoreboard players set @s am_gametimer 9999

execute if score @s am_gametimer matches 380 at @r[tag=amplayer] run playsound custom.t2s.waltuh.am_offer_long master @a ~ ~ ~ 1000
execute if score @s am_gametimer matches 380 run tellraw @a [{"text":"<","color":"white"},{"text":"Heisenberg","color":"#FFA159"},{"text":"> "},{"text":"Well,","color":"#FFA159"}]
execute if score @s am_gametimer matches 387 run tellraw @a [{"text":"<","color":"white"},{"text":"Heisenberg","color":"#FFA159"},{"text":"> "},{"text":"if we are speaking about a chemically sound product that's up to my standards,","color":"#FFA159"}]
execute if score @s am_gametimer matches 464 run tellraw @a [{"text":"<","color":"white"},{"text":"Heisenberg","color":"#FFA159"},{"text":"> "},{"text":"I can give you a special offer.","color":"#FFA159"}]
execute if score @s am_gametimer matches 503 run tellraw @a [{"text":"<","color":"white"},{"text":"Heisenberg","color":"#FFA159"},{"text":"> "},{"text":"Some kid came by and contaminated my cooking machine,","color":"#FFA159"}]
execute if score @s am_gametimer matches 566 run tellraw @a [{"text":"<","color":"white"},{"text":"Heisenberg","color":"#FFA159"},{"text":"> "},{"text":"so I need to make money in other ways.","color":"#FFA159"}]

execute if score @s am_gametimer matches 620 at @r[tag=amplayer] run playsound custom.t2s.waltuh.am_offer_short master @a ~ ~ ~ 1000
execute if score @s am_gametimer matches 620 run tellraw @a [{"text":"<","color":"white"},{"text":"Heisenberg","color":"#FFA159"},{"text":"> "},{"text":"I can offer you the best drink you've ever had for a measly $100000.","color":"#FFA159"}]
execute if score @s am_gametimer matches 722 run tellraw @a [{"text":"<","color":"white"},{"text":"Heisenberg","color":"#FFA159"},{"text":"> "},{"text":"What do you say? ","color":"#FFA159"},{"text":"[Accept]","color":"green","bold":true,"hoverEvent":{"action":"show_text","contents":[{"text":"Click to accept Heisenberg's offer!","color":"green"}]},"clickEvent":{"action":"run_command","value":"/trigger Game_Choice set 1"}}]
execute if score @s am_gametimer matches 722 run scoreboard players enable @a[tag=amplayer] Game_Choice
execute if score @s am_gametimer matches 722 run scoreboard players set @s am_ricktask 2
execute if score @s am_gametimer matches 722 run scoreboard players set @s am_gamescore5 2
execute if score @s am_gametimer matches 722 run scoreboard players set @s am_gametimer 9999

execute if score @s am_gametimer matches 776 at @r[tag=amplayer] run playsound custom.act3.money master @a ~ ~ ~ 1000
execute if score @s am_gametimer matches 776 run title @a actionbar {"text":"-$420","color":"red"}
execute if score @s am_gametimer matches 776 run fill -37 32 115 -38 33 115 air
execute if score @s am_gametimer matches 776 run scoreboard players set @s am_gametimer 9999

execute if score @s am_gametimer matches 822 run tellraw @a [{"text":"<","color":"white"},{"text":"Rick","color":"aqua"},{"text":"> "},{"text":"Good job.","color":"aqua"}]
execute if score @s am_gametimer matches 842 run function ttt:amogus/minigames/id12/task_complete