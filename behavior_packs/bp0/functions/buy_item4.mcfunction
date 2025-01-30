#SETS CAN_BUY EQUAL TO PLAYER MONEY. THIS IS TO COPY THAT VALUE OVER TO A NEW VALUE THAT WE CAN EDIT WITHOUT CHANGING PLAYERS MONEY.
scoreboard players operation can_buy var = @a Coins
#SUBTRACTS THE PRICE OF ITEM FROM "CAN_BUY" (WHICH REPRESENTS PLAYER MONEY) TO CHECK IF PLAYER CAN AFFORD ITEM
scoreboard players operation can_buy var -= "Gold Pickaxe" shop_prices
#ADDS TAGS BASED ON WHETHER OR NOT PLAYER CAN AFFORD ITEM
execute @a ~~~ scoreboard players operation @s shop_prices = can_buy var
execute @a[scores={shop_prices=0..}] ~~~ tag @s add buy4
execute @a[scores={shop_prices=..-1}] ~~~ tag @s add cantbuy4
#TAKES AWAY MONEY AND GIVES ITEM IF PLAYER CAN BUY. WRITES MESSAGE TO ACTIONBAR
execute @p[tag=buy4] ~~~ scoreboard players operation @a Coins -= "Gold Pickaxe" shop_prices
#execute @p[tag=buy4] ~~~ give @s golden_pickaxe 1 0 {"minecraft:can_destroy":{"blocks":["stone","coal_ore","gold_ore","iron_ore","redstone_ore","lit_redstone_ore","diamond_ore"]}}


execute @p[tag=buy4] ~~~ clone 52 57 -31 52 57 -31 46 57 -26
execute @p[tag=buy4] ~~~ fill 46 57 -26 46 57 -26 air 0 destroy
execute @p[tag=buy4] ~~~ tp @e[name="Golden Pickaxe",x=45,y=57,z=-26,r=4] -6 71 -25
execute @p[tag=buy4] ~~~ kill @e[name=Chest,type=item,x=45,y=57,z=-26,r=4]





execute @p[tag=buy4] ~~~ title @s actionbar You Have Purchased a Gold Pickaxe.
execute @p[tag=cantbuy4] ~~~ title @s actionbar Keep Digging! You can't afford a Gold Pickaxe.
#REMOVES BUY AND CANTBUY TAGS
execute @a[tag=buy4] ~~~ tag @s remove buy4
execute @a[tag=cantbuy4] ~~~ tag @s remove cantbuy4
event entity @e myth:buy_reset_event