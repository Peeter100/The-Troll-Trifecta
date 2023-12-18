fill 23 40 47 25 46 49 air destroy
fill 20 44 51 21 45 52 air destroy
particle flame 21 43 51 2 2 2 0 50 force @a

summon falling_block 25 44 48 {BlockState:{Name:"minecraft:grass_block"},Time:1,HurtEntities:0b,Tags:["forkill","torchwoodfall"]}
summon falling_block 25 43 47 {BlockState:{Name:"minecraft:grass_block"},Time:1,HurtEntities:0b,Tags:["forkill","torchwoodfall"]}
summon falling_block 24 43 47 {BlockState:{Name:"minecraft:grass_block"},Time:1,HurtEntities:0b,Tags:["forkill","torchwoodfall"]}
summon falling_block 24 42 48 {BlockState:{Name:"minecraft:grass_block"},Time:1,HurtEntities:0b,Tags:["forkill","torchwoodfall"]}

summon falling_block 25 43 48 {BlockState:{Name:"minecraft:stone"},Time:1,HurtEntities:0b,Tags:["forkill","torchwoodfall"]}
summon falling_block 25 42 48 {BlockState:{Name:"minecraft:cobblestone"},Time:1,HurtEntities:0b,Tags:["forkill","torchwoodfall"]}
summon falling_block 24 42 47 {BlockState:{Name:"minecraft:stone"},Time:1,HurtEntities:0b,Tags:["forkill","torchwoodfall"]}
summon falling_block 24 41 47 {BlockState:{Name:"minecraft:andesite"},Time:1,HurtEntities:0b,Tags:["forkill","torchwoodfall"]}
summon falling_block 24 41 48 {BlockState:{Name:"minecraft:stone"},Time:1,HurtEntities:0b,Tags:["forkill","torchwoodfall"]}
summon falling_block 25 42 47 {BlockState:{Name:"minecraft:stone_stairs",Properties:{facing:"west",half:"top",shape:"straight"}},Time:1,HurtEntities:0b,Tags:["forkill"]}

schedule function ttt:act1/torchwood/ph5 8t replace