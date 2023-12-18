#execute if score @s gun_haswater matches 1.. run give @s carrot_on_a_stick{display:{Name:'{"text":"Filled Water Gun","color":"yellow","italic":false}',Lore:['{"text":"Right-click to fire hot water.","color":"gray","italic":false}','{"text":" "}','{"text":"Useful for cleaning mold","color":"gray","italic":false}','{"text":"or shooting people in the eyes.","color":"gray","italic":false}','{"text":" "}','{"text":"Finders Keepers:","color":"red","italic":false}','{"text":"You keep this item and its","color":"gray","italic":false}','{"text":"state after dying!","color":"gray","italic":false}']},CustomModelData:54,wgun:1b,filled:1b}
#execute unless score @s gun_haswater matches 1.. run give @s carrot_on_a_stick{display:{Name:'{"text":"Empty Water Gun","color":"yellow","italic":false}',Lore:['{"text":"Right-click water to pour","color":"gray","italic":false}','{"text":"some inside of the gun.","color":"gray","italic":false}','{"text":" "}','{"text":"Useful for cleaning mold","color":"gray","italic":false}','{"text":"or shooting people in the eyes.","color":"gray","italic":false}','{"text":" "}','{"text":"Finders Keepers:","color":"red","italic":false}','{"text":"You keep this item and its","color":"gray","italic":false}','{"text":"state after dying!","color":"gray","italic":false}']},CustomModelData:53,wgun:1b,filled:0b}

item replace entity @s hotbar.0 with carrot_on_a_stick{display:{Name:'{"text":"Empty Water Gun","color":"yellow","italic":false}',Lore:['{"text":"Right-click water to pour","color":"gray","italic":false}','{"text":"some inside of the gun.","color":"gray","italic":false}','{"text":" "}','{"text":"Useful for cleaning mold off of wood","color":"gray","italic":false}','{"text":"or shooting people in the eyes.","color":"gray","italic":false}','{"text":" "}','{"text":"Finders Keepers:","color":"red","italic":false}','{"text":"You keep this item and its","color":"gray","italic":false}','{"text":"state after dying!","color":"gray","italic":false}']},CustomModelData:53,wgun:1b,filled:0b}
execute if score @s gun_haswater matches 1.. run item modify entity @s hotbar.0 ttt:fill_water_gun_score
execute if score @s gun_haswater matches 1.. as @e[type=marker,tag=sv] if score @s fnf_wguntutorial matches 0 run scoreboard players set @s dialogueseq -1