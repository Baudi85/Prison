#SETS CAN_BUY EQUAL TO PLAYER MONEY. THIS IS TO COPY THAT VALUE OVER TO A NEW VALUE THAT WE CAN EDIT WITHOUT CHANGING PLAYERS MONEY.
scoreboard players operation can_buy var = @a Coins
#SUBTRACTS THE PRICE OF ITEM FROM "CAN_BUY" (WHICH REPRESENTS PLAYER MONEY) TO CHECK IF PLAYER CAN AFFORD ITEM
scoreboard players operation can_buy var -= "Book" shop_prices
#ADDS TAGS BASED ON WHETHER OR NOT PLAYER CAN AFFORD ITEM
execute @a ~~~ scoreboard players operation @s shop_prices = can_buy var
execute @a[scores={shop_prices=0..}] ~~~ tag @s add buy9
execute @a[scores={shop_prices=..-1}] ~~~ tag @s add cantbuy9
#TAKES AWAY MONEY AND GIVES ITEM IF PLAYER CAN BUY. WRITES MESSAGE TO ACTIONBAR
execute @p[tag=buy9] ~~~ scoreboard players operation @a Coins -= "Book" shop_prices
#execute @p[tag=buy9] ~~~ give @s book 1 0



execute @p[tag=buy9] ~~~ clone 47 57 -30 47 57 -30 46 57 -26
execute @p[tag=buy9] ~~~ fill 46 57 -26 46 57 -26 air 0 destroy
execute @p[tag=buy9] ~~~ tp @e[name="Book",x=45,y=57,z=-26,r=4] -6 71 -30
execute @p[tag=buy9] ~~~ kill @e[name=Chest,type=item,x=45,y=57,z=-26,r=4]



execute @p[tag=buy9] ~~~ title @s actionbar You Have Purchased a Book.
execute @p[tag=cantbuy9] ~~~ title @s actionbar Keep Digging! You can't afford a Book.
#REMOVES BUY AND CANTBUY TAGS
execute @a[tag=buy9] ~~~ tag @s remove buy9
execute @a[tag=cantbuy9] ~~~ tag @s remove cantbuy9
event entity @e myth:buy_reset_event