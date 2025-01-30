#SETS CAN_BUY EQUAL TO PLAYER MONEY. THIS IS TO COPY THAT VALUE OVER TO A NEW VALUE THAT WE CAN EDIT WITHOUT CHANGING PLAYERS MONEY.
scoreboard players operation can_buy var = @a Coins
#SUBTRACTS THE PRICE OF ITEM FROM "CAN_BUY" (WHICH REPRESENTS PLAYER MONEY) TO CHECK IF PLAYER CAN AFFORD ITEM
scoreboard players operation can_buy var -= "Diamond Armor" shop_prices
#ADDS TAGS BASED ON WHETHER OR NOT PLAYER CAN AFFORD ITEM
execute @a ~~~ scoreboard players operation @s shop_prices = can_buy var
execute @a[scores={shop_prices=0..}] ~~~ tag @s add buy15
execute @a[scores={shop_prices=..-1}] ~~~ tag @s add cantbuy15
#TAKES AWAY MONEY AND GIVES ITEM IF PLAYER CAN BUY. WRITES MESSAGE TO ACTIONBAR
execute @p[tag=buy15] ~~~ scoreboard players operation @a Coins -= "Diamond Armor" shop_prices


#execute @p[tag=buy15] ~~~ give @s diamond_helmet 1 0
#execute @p[tag=buy15] ~~~ give @s diamond_chestplate 1 0
#execute @p[tag=buy15] ~~~ give @s diamond_leggings 1 0
#execute @p[tag=buy15] ~~~ give @s diamond_boots 1 0



execute @p[tag=buy15] ~~~ clone 48 57 -33 48 57 -33 46 57 -26
execute @p[tag=buy15] ~~~ fill 46 57 -26 46 57 -26 air 0 destroy
execute @p[tag=buy15] ~~~ tp @e[name="Diamond Helmet",x=45,y=57,z=-26,r=4] -12 72 -28
execute @p[tag=buy15] ~~~ tp @e[name="Diamond Chestplate",x=45,y=57,z=-26,r=4] -12 72 -28
execute @p[tag=buy15] ~~~ tp @e[name="Diamond Leggings",x=45,y=57,z=-26,r=4] -12 72 -28
execute @p[tag=buy15] ~~~ tp @e[name="Diamond Boots",x=45,y=57,z=-26,r=4] -12 72 -28
execute @p[tag=buy15] ~~~ kill @e[name=Chest,type=item,x=45,y=57,z=-26,r=4]



execute @p[tag=buy15] ~~~ title @s actionbar You Have Purchased Diamond Armor.
execute @p[tag=cantbuy15] ~~~ title @s actionbar Keep Digging! You can't afford Diamond Armor.
#REMOVES BUY AND CANTBUY TAGS
execute @a[tag=buy15] ~~~ tag @s remove buy15
execute @a[tag=cantbuy15] ~~~ tag @s remove cantbuy15
event entity @e myth:buy_reset_event