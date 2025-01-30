#SETS CAN_BUY EQUAL TO PLAYER MONEY. THIS IS TO COPY THAT VALUE OVER TO A NEW VALUE THAT WE CAN EDIT WITHOUT CHANGING PLAYERS MONEY.
scoreboard players operation can_buy var = @a Coins
#SUBTRACTS THE PRICE OF ITEM FROM "CAN_BUY" (WHICH REPRESENTS PLAYER MONEY) TO CHECK IF PLAYER CAN AFFORD ITEM
scoreboard players operation can_buy var -= "Netherite Armor" shop_prices
#ADDS TAGS BASED ON WHETHER OR NOT PLAYER CAN AFFORD ITEM
execute @a ~~~ scoreboard players operation @s shop_prices = can_buy var
execute @a[scores={shop_prices=0..}] ~~~ tag @s add buy16
execute @a[scores={shop_prices=..-1}] ~~~ tag @s add cantbuy16
#TAKES AWAY MONEY AND GIVES ITEM IF PLAYER CAN BUY. WRITES MESSAGE TO ACTIONBAR
execute @p[tag=buy16] ~~~ scoreboard players operation @a Coins -= "Netherite Armor" shop_prices


#execute @p[tag=buy16] ~~~ give @s netherite_helmet 1 0
#execute @p[tag=buy16] ~~~ give @s netherite_chestplate 1 0
#execute @p[tag=buy16] ~~~ give @s netherite_leggings 1 0
#execute @p[tag=buy16] ~~~ give @s netherite_boots 1 0

execute @p[tag=buy16] ~~~ clone 50 57 -33 50 57 -33 46 57 -26
execute @p[tag=buy16] ~~~ fill 46 57 -26 46 57 -26 air 0 destroy
execute @p[tag=buy16] ~~~ tp @e[name="Netherite Helmet",x=45,y=57,z=-26,r=4] -12 72 -29
execute @p[tag=buy16] ~~~ tp @e[name="Netherite Chestplate",x=45,y=57,z=-26,r=4] -12 72 -29
execute @p[tag=buy16] ~~~ tp @e[name="Netherite Leggings",x=45,y=57,z=-26,r=4] -12 72 -29
execute @p[tag=buy16] ~~~ tp @e[name="Netherite Boots",x=45,y=57,z=-26,r=4] -12 72 -29
execute @p[tag=buy16] ~~~ kill @e[name=Chest,type=item,x=45,y=57,z=-26,r=4]



execute @p[tag=buy16] ~~~ title @s actionbar You Have Purchased Netherite Armor.
execute @p[tag=cantbuy16] ~~~ title @s actionbar Keep Digging! You can't afford Netherite Armor.
#REMOVES BUY AND CANTBUY TAGS
execute @a[tag=buy16] ~~~ tag @s remove buy16
execute @a[tag=cantbuy16] ~~~ tag @s remove cantbuy16
event entity @e myth:buy_reset_event