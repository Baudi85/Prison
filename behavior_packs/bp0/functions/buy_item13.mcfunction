#SETS CAN_BUY EQUAL TO PLAYER MONEY. THIS IS TO COPY THAT VALUE OVER TO A NEW VALUE THAT WE CAN EDIT WITHOUT CHANGING PLAYERS MONEY.
scoreboard players operation can_buy var = @a Coins
#SUBTRACTS THE PRICE OF ITEM FROM "CAN_BUY" (WHICH REPRESENTS PLAYER MONEY) TO CHECK IF PLAYER CAN AFFORD ITEM
scoreboard players operation can_buy var -= "Iron Armor" shop_prices
#ADDS TAGS BASED ON WHETHER OR NOT PLAYER CAN AFFORD ITEM
execute @a ~~~ scoreboard players operation @s shop_prices = can_buy var
execute @a[scores={shop_prices=0..}] ~~~ tag @s add buy13
execute @a[scores={shop_prices=..-1}] ~~~ tag @s add cantbuy13
#TAKES AWAY MONEY AND GIVES ITEM IF PLAYER CAN BUY. WRITES MESSAGE TO ACTIONBAR
execute @p[tag=buy13] ~~~ scoreboard players operation @a Coins -= "Iron Armor" shop_prices



#execute @p[tag=buy13] ~~~ give @s iron_helmet 1 0
#execute @p[tag=buy13] ~~~ give @s iron_chestplate 1 0
#execute @p[tag=buy13] ~~~ give @s iron_leggings 1 0
#execute @p[tag=buy13] ~~~ give @s iron_boots 1 0


execute @p[tag=buy13] ~~~ clone 53 57 -32 53 57 -32 46 57 -26
execute @p[tag=buy13] ~~~ fill 46 57 -26 46 57 -26 air 0 destroy
execute @p[tag=buy13] ~~~ tp @e[name="Iron Helmet",x=45,y=57,z=-26,r=4] -6 71 -34
execute @p[tag=buy13] ~~~ tp @e[name="Iron Chestplate",x=45,y=57,z=-26,r=4] -6 71 -34
execute @p[tag=buy13] ~~~ tp @e[name="Iron Leggings",x=45,y=57,z=-26,r=4] -6 71 -34
execute @p[tag=buy13] ~~~ tp @e[name="Iron Boots",x=45,y=57,z=-26,r=4] -6 71 -34
execute @p[tag=buy13] ~~~ kill @e[name=Chest,type=item,x=45,y=57,z=-26,r=4]




execute @p[tag=buy13] ~~~ title @s actionbar You Have Purchased Iron Armor.
execute @p[tag=cantbuy13] ~~~ title @s actionbar Keep Digging! You can't afford Iron Armor.
#REMOVES BUY AND CANTBUY TAGS
execute @a[tag=buy13] ~~~ tag @s remove buy13
execute @a[tag=cantbuy13] ~~~ tag @s remove cantbuy13
event entity @e myth:buy_reset_event