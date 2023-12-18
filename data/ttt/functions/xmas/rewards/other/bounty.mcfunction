playsound entity.wither.spawn master @s ~ ~ ~ 1000 2
tellraw @s [{"text":"YOU ARE BEING HUNTED","color":"red","bold":true},{"text":"\nThere is now a huge bounty on you created by the Grinch. You have 5 minutes to complete the Act or be executed.","bold":false}]
schedule function ttt:xmas/rewards/other/bounty_schedule 300s replace
tag @s add xmas_bounty
tag @s remove needsgift