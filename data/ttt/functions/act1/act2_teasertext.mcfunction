#tellraw @a {"text":"*You hear a mysterious whisper call your name*","color":"#331E44","italic":true}
tellraw @a {"text":"(A new pathway has opened inside of the cavern walls...)","color":"gray","italic":true}
execute as @a at @s run playsound block.grindstone.use master @s ~ ~ ~ 1000
execute as @a at @s run playsound block.stone.break master @s ~ ~ ~ 1000