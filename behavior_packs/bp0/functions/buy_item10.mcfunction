#SETS CAN_BUY EQUAL TO PLAYER MONEY. THIS IS TO COPY THAT VALUE OVER TO A NEW VALUE THAT WE CAN EDIT WITHOUT CHANGING PLAYERS MONEY.
scoreboard players operation can_buy var = @a Coins
#SUBTRACTS THE PRICE OF ITEM FROM "CAN_BUY" (WHICH REPRESENTS PLAYER MONEY) TO CHECK IF PLAYER CAN AFFORD ITEM
scoreboard players operation can_buy var -= "Sapling" shop_prices
#ADDS TAGS BASED ON WHETHER OR NOT PLAYER CAN AFFORD ITEM
execute @a ~~~ scoreboard players operation @s shop_prices = can_buy var
execute @a[scores={shop_prices=0..}] ~~~ tag @s add buy10
execute @a[scores={shop_prices=..-1}] ~~~ tag @s add cantbuy10
#TAKES AWAY MONEY AND GIVES ITEM IF PLAYER CAN BUY. WRITES MESSAGE TO ACTIONBAR
execute @p[tag=buy10] ~~~ scoreboard players operation @a Coins -= "Sapling" shop_prices
#execute @p[tag=buy10] ~~~ give @s sapling 1 0 {"can_place_on":{"blocks":["farmland","dirt","grass"]}}


execute @p[tag=buy10] ~~~ clone 47 57 -32 47 57 -32 46 57 -26
execute @p[tag=buy10] ~~~ fill 46 57 -26 46 57 -26 air 0 destroy
execute @p[tag=buy10] ~~~ tp @e[name="Oak Sapling",x=45,y=57,z=-26,r=4] -6 71 -31
execute @p[tag=buy10] ~~~ kill @e[name=Chest,type=item,x=45,y=57,z=-26,r=4]



execute @p[tag=buy10] ~~~ title @s actionbar You Have Purchased a Sapling.
execute @p[tag=cantbuy10] ~~~ title @s actionbar Keep Digging! You can't afford a Sapling.
#REMOVES BUY AND CANTBUY TAGS
execute @a[tag=buy10] ~~~ tag @s remove buy10
execute @a[tag=cantbuy10] ~~~ tag @s remove cantbuy10
event entity @e myth:buy_reset_event