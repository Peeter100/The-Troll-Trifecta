execute as @a[team=p,scores={hp=1..}] run function ttt:xmas/giftcheck_try
schedule function ttt:xmas/giftcheck_schedule 80t replace
execute if predicate ttt:25ch run schedule function ttt:xmas/giftcheck_schedule 50t replace
execute if predicate ttt:15ch run schedule function ttt:xmas/giftcheck_schedule 20t replace