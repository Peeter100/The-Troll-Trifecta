clear @s chain
clear @s barrier
kill @e[type=item,nbt={Item:{tag:{lockedgus:1b}}}]

execute unless entity @e[tag=sv,scores={am_gametimer=10..9999,am_gameid=1}] run item replace entity @s weapon.offhand with chain{display:{Name:'[{"text":"You are disguised as a ","color":"yellow","italic":false},{"text":"red crewmate","color":"red"},{"text":"!"}]',Lore:['[{"text":"You are an ","color":"gray","italic":false},{"text":"impostor","color":"red"},{"text":"."}]','{"text":"Kill all crewmates to win.","color":"gray","italic":false}']},CustomModelData:200,lockedgus:1b,impostorsuit:1b} 1
execute if entity @e[tag=sv,scores={am_gametimer=10..9999,am_gameid=1}] run item replace entity @s weapon.offhand with barrier{display:{Name:'{"text":"YOUR DISGUISE FOOLS NOONE","color":"#942626","font":"trollge","italic":"false"}'},lockedgus:1b,impostorsuit:1b} 1