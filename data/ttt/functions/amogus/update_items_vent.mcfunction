clear @s carrot_on_a_stick
clear @s chain
kill @e[type=item,nbt={Item:{tag:{lockedgus:1b}}}]

item replace entity @s weapon.offhand with chain{display:{Name:'[{"text":"You are disguised as a ","color":"yellow","italic":false},{"text":"red crewmate","color":"red"},{"text":"!"}]',Lore:['[{"text":"You are an ","color":"gray","italic":false},{"text":"impostor","color":"red"},{"text":"."}]','{"text":"Kill all crewmates to win.","color":"gray","italic":false}']},CustomModelData:200,lockedgus:1b,impostorsuit:1b} 1

item replace entity @s hotbar.0 with carrot_on_a_stick{display:{Name:'{"text":"Map","color":"white","italic":false}',Lore:['{"text":"Hold to view the map.","color":"gray","italic":false}']},CustomModelData:19,lockedgus:1b,mapicon:1b} 1

item replace entity @s hotbar.1 with carrot_on_a_stick{display:{Name:'{"text":"<< Previous Vent","color":"red","italic":false}',Lore:['{"text":"Right-click to swap vents.","color":"gray","italic":false}']},CustomModelData:37,lockedgus:1b,ventlefticon:1b} 1
item replace entity @s hotbar.2 with carrot_on_a_stick{display:{Name:'{"text":"Leave Vent","color":"red","italic":false}',Lore:['{"text":"Right-click to get out of the vent.","color":"gray","italic":false}']},CustomModelData:29,lockedgus:1b,unventicon:1b} 1
item replace entity @s hotbar.3 with carrot_on_a_stick{display:{Name:'{"text":"Next Vent >>","color":"red","italic":false}',Lore:['{"text":"Right-click to swap vents.","color":"gray","italic":false}']},CustomModelData:38,lockedgus:1b,ventrighticon:1b} 1