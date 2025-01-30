#SETS CAN_BUY EQUAL TO PLAYER MONEY. THIS IS TO COPY THAT VALUE OVER TO A NEW VALUE THAT WE CAN EDIT WITHOUT CHANGING PLAYERS MONEY.
scoreboard players operation can_buy var = @a Coins
#SUBTRACTS THE PRICE OF ITEM FROM "CAN_BUY" (WHICH REPRESENTS PLAYER MONEY) TO CHECK IF PLAYER CAN AFFORD ITEM
scoreboard players operation can_buy var -= "Leather Armor" shop_prices
#ADDS TAGS BASED ON WHETHER OR NOT PLAYER CAN AFFORD ITEM
execute @a ~~~ scoreboard players operation @s shop_prices = can_buy var
execute @a[scores={shop_prices=0..}] ~~~ tag @s add buy11
execute @a[scores={shop_prices=..-1}] ~~~ tag @s add cantbuy11
#TAKES AWAY MONEY AND GIVES ITEM IF PLAYER CAN BUY. WRITES MESSAGE TO ACTIONBAR
execute @p[tag=buy11] ~~~ scoreboard players operation @a Coins -= "Leather Armor" shop_prices





#execute @p[tag=buy11] ~~~ give @s leather_helmet 1 0
#execute @p[tag=buy11] ~~~ give @s leather_chestplate 1 0
#execute @p[tag=buy11] ~~~ give @s leather_leggings 1 0
#execute @p[tag=buy11] ~~~ give @s leather_boots 1 0
#execute @p[tag=buy11] ~~~ title @s actionbar You Have Purchased Leather Armor.

execute @p[tag=buy11] ~~~ clone 49 57 -32 49 57 -32 46 57 -26
execute @p[tag=buy11] ~~~ fill 46 57 -26 46 57 -26 air 0 destroy
execute @p[tag=buy11] ~~~ tp @e[name="Leather Cap",x=45,y=57,z=-26,r=4] -6 71 -32
execute @p[tag=buy11] ~~~ tp @e[name="Leather Tunic",x=45,y=57,z=-26,r=4] -6 71 -32
execute @p[tag=buy11] ~~~ tp @e[name="Leather Pants",x=45,y=57,z=-26,r=4] -6 71 -32
execute @p[tag=buy11] ~~~ tp @e[name="Leather Boots",x=45,y=57,z=-26,r=4] -6 71 -32
execute @p[tag=buy11] ~~~ kill @e[name=Chest,type=item,x=45,y=57,z=-26,r=4]


execute @p[tag=cantbuy11] ~~~ title @s actionbar Keep Digging! You can't afford Leather Armor.
#REMOVES BUY AND CANTBUY TAGS
execute @a[tag=buy11] ~~~ tag @s remove buy11
execute @a[tag=cantbuy11] ~~~ tag @s remove cantbuy11
event entity @e myth:buy_reset_event