#SETS CAN_BUY EQUAL TO PLAYER MONEY. THIS IS TO COPY THAT VALUE OVER TO A NEW VALUE THAT WE CAN EDIT WITHOUT CHANGING PLAYERS MONEY.
scoreboard players operation can_buy var = @a Coins
#SUBTRACTS THE PRICE OF ITEM FROM "CAN_BUY" (WHICH REPRESENTS PLAYER MONEY) TO CHECK IF PLAYER CAN AFFORD ITEM
scoreboard players operation can_buy var -= "Diamond Pickaxe" shop_prices
#ADDS TAGS BASED ON WHETHER OR NOT PLAYER CAN AFFORD ITEM
execute @a ~~~ scoreboard players operation @s shop_prices = can_buy var
execute @a[scores={shop_prices=0..}] ~~~ tag @s add buy5
execute @a[scores={shop_prices=..-1}] ~~~ tag @s add cantbuy5
#TAKES AWAY MONEY AND GIVES ITEM IF PLAYER CAN BUY. WRITES MESSAGE TO ACTIONBAR
execute @p[tag=buy5] ~~~ scoreboard players operation @a Coins -= "Diamond Pickaxe" shop_prices
#execute @p[tag=buy5] ~~~ give @s diamond_pickaxe 1 0 {"minecraft:can_destroy":{"blocks":["stone","coal_ore","gold_ore","iron_ore","redstone_ore","lit_redstone_ore","diamond_ore","ancient_debris"]}}



execute @p[tag=buy5] ~~~ clone 54 57 -31 54 57 -31 46 57 -26
execute @p[tag=buy5] ~~~ fill 46 57 -26 46 57 -26 air 0 destroy
execute @p[tag=buy5] ~~~ tp @e[name="Diamond Pickaxe",x=45,y=57,z=-26,r=4] -6 71 -26
execute @p[tag=buy5] ~~~ kill @e[name=Chest,type=item,x=45,y=57,z=-26,r=4]



execute @p[tag=buy5] ~~~ title @s actionbar You Have Purchased a Diamond Pickaxe.
execute @p[tag=cantbuy5] ~~~ title @s actionbar Keep Digging! You can't afford a Diamond Pickaxe.
#REMOVES BUY AND CANTBUY TAGS
execute @a[tag=buy5] ~~~ tag @s remove buy5
execute @a[tag=cantbuy5] ~~~ tag @s remove cantbuy5
event entity @e myth:buy_reset_event