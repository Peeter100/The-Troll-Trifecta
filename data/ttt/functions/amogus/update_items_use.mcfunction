clear @s carrot_on_a_stick{useicon:1b}
kill @e[type=item,nbt={Item:{tag:{lockedgus:1b}}}]

item replace entity @s hotbar.4 with carrot_on_a_stick{display:{Name:'{"text":"Do Task","color":"white","italic":false}',Lore:['{"text":"Right-click to do the task.","color":"gray","italic":false}']},CustomModelData:28,lockedgus:1b,useicon:1b} 1