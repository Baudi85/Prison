#SETS CAN_BUY EQUAL TO PLAYER MONEY. THIS IS TO COPY THAT VALUE OVER TO A NEW VALUE THAT WE CAN EDIT WITHOUT CHANGING PLAYERS MONEY.
scoreboard players operation can_buy var = @a Coins
#SUBTRACTS THE PRICE OF ITEM FROM "CAN_BUY" (WHICH REPRESENTS PLAYER MONEY) TO CHECK IF PLAYER CAN AFFORD ITEM
scoreboard players operation can_buy var -= "Iron Pickaxe" shop_prices
#ADDS TAGS BASED ON WHETHER OR NOT PLAYER CAN AFFORD ITEM
execute @a ~~~ scoreboard players operation @s shop_prices = can_buy var
execute @a[scores={shop_prices=0..}] ~~~ tag @s add buy3
execute @a[scores={shop_prices=..-1}] ~~~ tag @s add cantbuy3
#TAKES AWAY MONEY AND GIVES ITEM IF PLAYER CAN BUY. WRITES MESSAGE TO ACTIONBAR
execute @p[tag=buy3] ~~~ scoreboard players operation @a Coins -= "Iron Pickaxe" shop_prices
#execute @p[tag=buy3] ~~~ give @s iron_pickaxe 1 0 {"minecraft:can_destroy":{"blocks":["stone","coal_ore","gold_ore","iron_ore","diamond_ore","redstone_ore","lit_redstone_ore"]}}

execute @p[tag=buy3] ~~~ clone 50 57 -31 50 57 -31 46 57 -26
execute @p[tag=buy3] ~~~ fill 46 57 -26 46 57 -26 air 0 destroy
execute @p[tag=buy3] ~~~ tp @e[name="Iron Pickaxe",x=45,y=57,z=-26,r=4] -6 71 -24
execute @p[tag=buy3] ~~~ kill @e[name=Chest,type=item,x=45,y=57,z=-26,r=4]




execute @p[tag=buy3] ~~~ title @s actionbar You Have Purchased Iron Pickaxe.
execute @p[tag=cantbuy3] ~~~ title @s actionbar Keep Digging! You can't afford an Iron Pickaxe.
#REMOVES BUY AND CANTBUY TAGS
execute @a[tag=buy3] ~~~ tag @s remove buy3
execute @a[tag=cantbuy3] ~~~ tag @s remove cantbuy3
event entity @e myth:buy_reset_event