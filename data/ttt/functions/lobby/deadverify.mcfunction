playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 0
scoreboard players enable @s Lobby_Trigger
tellraw @s [{"text":"Before playing, please make sure to change the ","color":"red"},{"text":"Lazy Chunk Loading","color":"#FF0000","bold":true},{"text":" setting to "},{"text":"OFF","color":"#FF0000","bold":true},{"text":" as it causes major TPS lag spikes in certain areas of the map!"},{"text":"\n(This setting only exists in mods such as OptiFine)","color":"#CC7777","italic":true},{"text":"\nClick ","color":"green"},{"text":"[here]","bold":true,"color":"green","clickEvent":{"action":"run_command","value":"/trigger Lobby_Trigger set 1"},"hoverEvent":{"action":"show_text","contents":{"text":"Click here!","color":"green"}}},{"text":" once disabled!","color":"green"}]
tag @s add deadverify