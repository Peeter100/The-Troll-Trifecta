execute if score @s f3_deathhintseq matches 1 run function ttt:finale/deathtip/tipseq2_1
execute if score @s f3_deathhintseq matches 2 if score @s f3_deaths matches 3.. run function ttt:finale/deathtip/tipseq3_1
execute if score @s f3_deathhintseq matches 3 if score @s f3_deaths matches 6.. run function ttt:finale/deathtip/tipseq4_1