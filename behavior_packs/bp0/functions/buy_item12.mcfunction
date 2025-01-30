#SETS CAN_BUY EQUAL TO PLAYER MONEY. THIS IS TO COPY THAT VALUE OVER TO A NEW VALUE THAT WE CAN EDIT WITHOUT CHANGING PLAYERS MONEY.
scoreboard players operation can_buy var = @a Coins
#SUBTRACTS THE PRICE OF ITEM FROM "CAN_BUY" (WHICH REPRESENTS PLAYER MONEY) TO CHECK IF PLAYER CAN AFFORD ITEM
scoreboard players operation can_buy var -= "Chain Armor" shop_prices
#ADDS TAGS BASED ON WHETHER OR NOT PLAYER CAN AFFORD ITEM
execute @a ~~~ scoreboard players operation @s shop_prices = can_buy var
execute @a[scores={shop_prices=0..}] ~~~ tag @s add buy12
execute @a[scores={shop_prices=..-1}] ~~~ tag @s add cantbuy12
#TAKES AWAY MONEY AND GIVES ITEM IF PLAYER CAN BUY. WRITES MESSAGE TO ACTIONBAR
execute @p[tag=buy12] ~~~ scoreboard players operation @a Coins -= "Chain Armor" shop_prices


#execute @p[tag=buy12] ~~~ give @s chainmail_helmet 1 0
##execute @p[tag=buy12] ~~~ give @s chainmail_chestplate 1 0
#execute @p[tag=buy12] ~~~ give @s chainmail_leggings 1 0
#execute @p[tag=buy12] ~~~ give @s chainmail_boots 1 0



execute @p[tag=buy12] ~~~ clone 51 57 -32 51 57 -32 46 57 -26
execute @p[tag=buy12] ~~~ fill 46 57 -26 46 57 -26 air 0 destroy
execute @p[tag=buy12] ~~~ tp @e[name="Chain Helmet",x=45,y=57,z=-26,r=4] -6 71 -33
execute @p[tag=buy12] ~~~ tp @e[name="Chain Chestplate",x=45,y=57,z=-26,r=4] -6 71 -33
execute @p[tag=buy12] ~~~ tp @e[name="Chain Leggings",x=45,y=57,z=-26,r=4] -6 71 -33
execute @p[tag=buy12] ~~~ tp @e[name="Chain Boots",x=45,y=57,z=-26,r=4] -6 71 -33
execute @p[tag=buy12] ~~~ kill @e[name=Chest,type=item,x=45,y=57,z=-26,r=4]






execute @p[tag=buy12] ~~~ title @s actionbar You Have Purchased Chain Armor.
execute @p[tag=cantbuy12] ~~~ title @s actionbar Keep Digging! You can't afford Chain Armor.
#REMOVES BUY AND CANTBUY TAGS
execute @a[tag=buy12] ~~~ tag @s remove buy12
execute @a[tag=cantbuy12] ~~~ tag @s remove cantbuy12
event entity @e myth:buy_reset_event