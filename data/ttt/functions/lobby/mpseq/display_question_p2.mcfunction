execute if score @s ms_seqid matches 30 run tellraw @s [{"text":"<","color":"#FBFF87"},{"text":"Map Setup","color":"yellow"},{"text":"> "},{"text":"This map is only compatible with Minecraft 1.18.2. The map could've gotten corrupted because of the wrong version. It is highly recommneded to re-download the map. You can do so officially from ","color":"yellow"},{"text":"[here]","color":"yellow","bold":true,"hoverEvent":{"action":"show_text","contents":[{"text":"Download from GitHub","color":"yellow","italic":false}]},"clickEvent":{"action":"open_url","value":"https://github.com/Peeter100/The-Troll-Trifecta/releases/download/1.1/The_Troll_Trifecta_v1.1_World.zip"}},{"text":"\nYour answer: --","color":"green"}]
execute if score @s ms_seqid matches 31 run tellraw @s [{"text":"<","color":"#FBFF87"},{"text":"Map Setup","color":"yellow"},{"text":"> "},{"text":"Make sure to disable the Lazy Chunk Loading setting. It should be located somewhere under Performance.","color":"yellow"},{"text":"\nYour answer: ","color":"green"},{"color":"green","text":"[I disabled it]","bold":true,"hoverEvent":{"action":"show_text","contents":[{"text":"Click me!","color":"green","italic":false}]},"clickEvent":{"action":"run_command","value":"/trigger Map_Setup set 1"}}]
execute if score @s ms_seqid matches 32 run tellraw @s [{"text":"<","color":"#FBFF87"},{"text":"Map Setup","color":"yellow"},{"text":"> "},{"text":"It appears you aren't using the required resource pack. If it hasn't been automatically applied, you can download it by clicking ","color":"yellow"},{"text":"[here]","color":"yellow","bold":true,"hoverEvent":{"action":"show_text","contents":[{"text":"Download from GitHub","color":"yellow","italic":false}]},"clickEvent":{"action":"open_url","value":"https://github.com/Peeter100/The-Troll-Trifecta/releases/download/1.1/TTT_v1.1_Resource_Pack.zip"}},{"text":"\nYour answer: ","color":"green"},{"color":"green","text":"[I downloaded it]","bold":true,"hoverEvent":{"action":"show_text","contents":[{"text":"Click me!","color":"green","italic":false}]},"clickEvent":{"action":"run_command","value":"/trigger Map_Setup set 1"}}]

execute if score @s ms_seqid matches 50 run tellraw @s [{"text":"<","color":"#FBFF87"},{"text":"Map Setup","color":"yellow"},{"text":"> "},{"text":"Are you playing on Minecraft 1.18.2?","color":"yellow"},{"text":"\nYour answer: ","color":"green"},{"color":"green","text":"[Yes]","bold":true,"hoverEvent":{"action":"show_text","contents":[{"text":"Click me!","color":"green","italic":false}]},"clickEvent":{"action":"run_command","value":"/trigger Map_Setup set 1"}},{"text":" "},{"color":"green","text":"[No]","bold":true,"hoverEvent":{"action":"show_text","contents":[{"text":"Click me!","color":"green","italic":false}]},"clickEvent":{"action":"run_command","value":"/trigger Map_Setup set 2"}}]
execute if score @s ms_seqid matches 51 run tellraw @s [{"text":"<","color":"#FBFF87"},{"text":"Map Setup","color":"yellow"},{"text":"> "},{"text":"Are you using optimization mods such as OptiFine?","color":"yellow"},{"text":"\nYour answer: ","color":"green"},{"color":"green","text":"[Yes]","bold":true,"hoverEvent":{"action":"show_text","contents":[{"text":"Click me!","color":"green","italic":false}]},"clickEvent":{"action":"run_command","value":"/trigger Map_Setup set 1"}},{"text":" "},{"color":"green","text":"[No]","bold":true,"hoverEvent":{"action":"show_text","contents":[{"text":"Click me!","color":"green","italic":false}]},"clickEvent":{"action":"run_command","value":"/trigger Map_Setup set 2"}}]
execute if score @s ms_seqid matches 52 run tellraw @s [{"text":"<","color":"#FBFF87"},{"text":"Map Setup","color":"yellow"},{"text":"> "},{"text":"Run the command: ","color":"yellow"},{"text":"\uE028","color":"green"},{"text":"\nCan't see it? Download the resource pack by clicking ","color":"yellow"},{"text":"[here]","color":"yellow","bold":true,"hoverEvent":{"action":"show_text","contents":[{"text":"Download from GitHub","color":"yellow","italic":false}]},"clickEvent":{"action":"open_url","value":"https://github.com/Peeter100/The-Troll-Trifecta/releases/download/1.1/TTT_v1.1_Resource_Pack.zip"}},{"text":"\nYour answer: --","color":"green"}]
execute if score @s ms_seqid matches 54 run tellraw @s [{"text":"<","color":"#FBFF87"},{"text":"Map Setup","color":"yellow"},{"text":"> "},{"text":"The debugging tool has found inconsistencies in datapack features. This might be due to some of the mods you have installed, wrong version or launcher incompatibility. Reinstall the map on a vanilla environment. You can download it officially from ","color":"yellow"},{"text":"[here]","color":"yellow","bold":true,"hoverEvent":{"action":"show_text","contents":[{"text":"Download from GitHub","color":"yellow","italic":false}]},"clickEvent":{"action":"open_url","value":"https://github.com/Peeter100/The-Troll-Trifecta/releases/download/1.1/The_Troll_Trifecta_v1.1_World.zip"}},{"text":"\nYour answer: --","color":"green"}]

execute if score @s ms_seqid matches 70 run tellraw @s [{"text":"<","color":"#FBFF87"},{"text":"Map Setup","color":"yellow"},{"text":"> "},{"text":"Make sure to disable the Lazy Chunk Loading setting. It should be located somewhere under Performance.","color":"yellow"},{"text":"\nYour answer: ","color":"green"},{"color":"green","text":"[I disabled it]","bold":true,"hoverEvent":{"action":"show_text","contents":[{"text":"Click me!","color":"green","italic":false}]},"clickEvent":{"action":"run_command","value":"/trigger Map_Setup set 1"}}]