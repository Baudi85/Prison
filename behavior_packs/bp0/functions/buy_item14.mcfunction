#SETS CAN_BUY EQUAL TO PLAYER MONEY. THIS IS TO COPY THAT VALUE OVER TO A NEW VALUE THAT WE CAN EDIT WITHOUT CHANGING PLAYERS MONEY.
scoreboard players operation can_buy var = @a Coins
#SUBTRACTS THE PRICE OF ITEM FROM "CAN_BUY" (WHICH REPRESENTS PLAYER MONEY) TO CHECK IF PLAYER CAN AFFORD ITEM
scoreboard players operation can_buy var -= "Gold Armor" shop_prices
#ADDS TAGS BASED ON WHETHER OR NOT PLAYER CAN AFFORD ITEM
execute @a ~~~ scoreboard players operation @s shop_prices = can_buy var
execute @a[scores={shop_prices=0..}] ~~~ tag @s add buy14
execute @a[scores={shop_prices=..-1}] ~~~ tag @s add cantbuy14
#TAKES AWAY MONEY AND GIVES ITEM IF PLAYER CAN BUY. WRITES MESSAGE TO ACTIONBAR
execute @p[tag=buy14] ~~~ scoreboard players operation @a Coins -= "Gold Armor" shop_prices



#execute @p[tag=buy14] ~~~ give @s golden_helmet 1 0
#execute @p[tag=buy14] ~~~ give @s golden_chestplate 1 0
#execute @p[tag=buy14] ~~~ give @s golden_leggings 1 0
#execute @p[tag=buy14] ~~~ give @s golden_boots 1 0


execute @p[tag=buy14] ~~~ clone 46 57 -33 46 57 -33 46 57 -26
execute @p[tag=buy14] ~~~ fill 46 57 -26 46 57 -26 air 0 destroy
execute @p[tag=buy14] ~~~ tp @e[name="Golden Helmet",x=45,y=57,z=-26,r=4] -12 72 -27
execute @p[tag=buy14] ~~~ tp @e[name="Golden Chestplate",x=45,y=57,z=-26,r=4] -12 72 -27
execute @p[tag=buy14] ~~~ tp @e[name="Golden Leggings",x=45,y=57,z=-26,r=4] -12 72 -27
execute @p[tag=buy14] ~~~ tp @e[name="Golden Boots",x=45,y=57,z=-26,r=4] -12 72 -27
execute @p[tag=buy14] ~~~ kill @e[name=Chest,type=item,x=45,y=57,z=-26,r=4]




execute @p[tag=buy14] ~~~ title @s actionbar You Have Purchased Gold Armor.
execute @p[tag=cantbuy14] ~~~ title @s actionbar Keep Digging! You can't afford Gold Armor.
#REMOVES BUY AND CANTBUY TAGS
execute @a[tag=buy14] ~~~ tag @s remove buy14
execute @a[tag=cantbuy14] ~~~ tag @s remove cantbuy14
event entity @e myth:buy_reset_event