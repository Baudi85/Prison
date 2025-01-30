#SETS CAN_BUY EQUAL TO PLAYER MONEY. THIS IS TO COPY THAT VALUE OVER TO A NEW VALUE THAT WE CAN EDIT WITHOUT CHANGING PLAYERS MONEY.
scoreboard players operation can_buy var = @a Coins
#SUBTRACTS THE PRICE OF ITEM FROM "CAN_BUY" (WHICH REPRESENTS PLAYER MONEY) TO CHECK IF PLAYER CAN AFFORD ITEM
scoreboard players operation can_buy var -= "Lapis Lazuli" shop_prices
#ADDS TAGS BASED ON WHETHER OR NOT PLAYER CAN AFFORD ITEM
execute @a ~~~ scoreboard players operation @s shop_prices = can_buy var
execute @a[scores={shop_prices=0..}] ~~~ tag @s add buy8
execute @a[scores={shop_prices=..-1}] ~~~ tag @s add cantbuy8
#TAKES AWAY MONEY AND GIVES ITEM IF PLAYER CAN BUY. WRITES MESSAGE TO ACTIONBAR
execute @p[tag=buy8] ~~~ scoreboard players operation @a Coins -= "Lapis Lazuli" shop_prices
#execute @p[tag=buy8] ~~~ give @s lapis_lazuli 1 0



execute @p[tag=buy8] ~~~ clone 49 57 -30 49 57 -30 46 57 -26
execute @p[tag=buy8] ~~~ fill 46 57 -26 46 57 -26 air 0 destroy
execute @p[tag=buy8] ~~~ tp @e[name="Lapis Lazuli",x=45,y=57,z=-26,r=4] -6 71 -29
execute @p[tag=buy8] ~~~ kill @e[name=Chest,type=item,x=45,y=57,z=-26,r=4]




execute @p[tag=buy8] ~~~ title @s actionbar You Have Purchased Lapis Lazuli.
execute @p[tag=cantbuy8] ~~~ title @s actionbar Keep Digging! You can't afford Lapis Lazuli.
#REMOVES BUY AND CANTBUY TAGS
execute @a[tag=buy8] ~~~ tag @s remove buy8
execute @a[tag=cantbuy8] ~~~ tag @s remove cantbuy8
event entity @e myth:buy_reset_event