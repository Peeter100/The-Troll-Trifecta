execute as @a[tag=bossplayer,distance=..13] facing entity @s eyes positioned ~ 16.5 ~ positioned ^ ^ ^1 run function ttt:finale/healcloud_raycast
execute as @a[tag=bossplayer,distance=..13] at @s run function ttt:finale/healcloud_player
particle dust 1 0 0 1 ~ ~.2 ~ .4 .4 .4 0 20 normal @a