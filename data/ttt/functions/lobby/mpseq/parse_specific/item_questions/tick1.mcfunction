execute if score @s ms_seqtimer matches -1 unless entity @s[nbt={Inventory:[{tag:{questionitem:1b}}]}] run give @s gold_ingot{display:{Name:'{"text":"Test Item","color":"white","italic":false}'},CustomModelData:1,locked:1b,questionitem:1b} 1