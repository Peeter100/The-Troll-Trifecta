#tellraw @a [{"text":"Check the ","color":"green"},{"text":"Harvard Where You At","color":"light_purple"},{"text":" advancement description for a hint"}]
execute as @a at @s run playsound entity.player.levelup master @a ~ ~ ~ 1000
tellraw @a [{"text":"You are good!","color":"green","bold":true},{"text":" But this is not the way to beat this task.","bold":false}]