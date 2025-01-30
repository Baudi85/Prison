#SETS CAN_BUY EQUAL TO PLAYER MONEY. THIS IS TO COPY THAT VALUE OVER TO A NEW VALUE THAT WE CAN EDIT WITHOUT CHANGING PLAYERS MONEY.
scoreboard players operation can_buy var = @a Coins
#SUBTRACTS THE PRICE OF ITEM FROM "CAN_BUY" (WHICH REPRESENTS PLAYER MONEY) TO CHECK IF PLAYER CAN AFFORD ITEM
scoreboard players operation can_buy var -= "Iron Hoe" shop_prices
#ADDS TAGS BASED ON WHETHER OR NOT PLAYER CAN AFFORD ITEM
execute @a ~~~ scoreboard players operation @s shop_prices = can_buy var
execute @a[scores={shop_prices=0..}] ~~~ tag @s add buy7
execute @a[scores={shop_prices=..-1}] ~~~ tag @s add cantbuy7
#TAKES AWAY MONEY AND GIVES ITEM IF PLAYER CAN BUY. WRITES MESSAGE TO ACTIONBAR
execute @p[tag=buy7] ~~~ scoreboard players operation @a Coins -= "Iron Hoe" shop_prices
#execute @p[tag=buy7] ~~~ give @s iron_hoe 1 0 {"can_place_on":{"blocks":["grass","dirt"]},"can_destroy":{"blocks":["wheat","log","leaves"]}}


execute @p[tag=buy7] ~~~ clone 51 57 -30 51 57 -30 46 57 -26
execute @p[tag=buy7] ~~~ fill 46 57 -26 46 57 -26 air 0 destroy
execute @p[tag=buy7] ~~~ tp @e[name="Iron Hoe",x=45,y=57,z=-26,r=4] -6 71 -28
execute @p[tag=buy7] ~~~ kill @e[name=Chest,type=item,x=45,y=57,z=-26,r=4]






execute @p[tag=buy7] ~~~ title @s actionbar You Have Purchased an Iron Hoe.
execute @p[tag=cantbuy7] ~~~ title @s actionbar Keep Digging! You can't afford a Iron Hoe.
#REMOVES BUY AND CANTBUY TAGS
execute @a[tag=buy7] ~~~ tag @s remove buy7
execute @a[tag=cantbuy7] ~~~ tag @s remove cantbuy7
event entity @e myth:buy_reset_event