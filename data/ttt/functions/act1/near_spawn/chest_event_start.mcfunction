data merge block 0 28 48 {powered:0b}
setblock 0 30 48 air destroy
execute positioned 0 30 48 run function ttt:act1/near_spawn/lightning_strike
#summon falling_block 0 30 48 {BlockState:{Name:"minecraft:chest",Properties:{facing:"north",type:"single"}},TileEntityData:{Lock:"hi"},NoGravity:1b,Time:-2147483647,DropItem:0b,HurtEntities:0b,Tags:["forkill","chestfly"]}