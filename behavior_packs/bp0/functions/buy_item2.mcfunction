#SETS CAN_BUY EQUAL TO PLAYER MONEY. THIS IS TO COPY THAT VALUE OVER TO A NEW VALUE THAT WE CAN EDIT WITHOUT CHANGING PLAYERS MONEY.
scoreboard players operation can_buy var = @a Coins
#SUBTRACTS THE PRICE OF ITEM FROM "CAN_BUY" (WHICH REPRESENTS PLAYER MONEY) TO CHECK IF PLAYER CAN AFFORD ITEM
scoreboard players operation can_buy var -= "Stone Pickaxe" shop_prices
#ADDS TAGS BASED ON WHETHER OR NOT PLAYER CAN AFFORD ITEM
execute @a ~~~ scoreboard players operation @s shop_prices = can_buy var
execute @a[scores={shop_prices=0..}] ~~~ tag @s add buy2
execute @a[scores={shop_prices=..-1}] ~~~ tag @s add cantbuy2
#TAKES AWAY MONEY AND GIVES ITEM IF PLAYER CAN BUY. WRITES MESSAGE TO ACTIONBAR
execute @p[tag=buy2] ~~~ scoreboard players operation @a Coins -= "Stone Pickaxe" shop_prices
#execute @p[tag=buy2] ~~~ give @s stone_pickaxe 1 0 {"minecraft:can_destroy":{"blocks":["stone","coal_ore","iron_ore"]}}

execute @p[tag=buy2] ~~~ clone 48 57 -31 48 57 -31 46 57 -26
execute @p[tag=buy2] ~~~ fill 46 57 -26 46 57 -26 air 0 destroy
execute @p[tag=buy2] ~~~ tp @e[name="Stone Pickaxe",x=45,y=57,z=-26,r=4] -6 71 -23
execute @p[tag=buy2] ~~~ kill @e[name=Chest,type=item,x=45,y=57,z=-26,r=4]





execute @p[tag=buy2] ~~~ title @s actionbar You Have Purchased 1 Stone Pickaxe.
execute @p[tag=cantbuy2] ~~~ title @s actionbar Keep Digging! You can't afford a Stone Pickaxe.
#REMOVES BUY AND CANTBUY TAGS
execute @a[tag=buy2] ~~~ tag @s remove buy2
execute @a[tag=cantbuy2] ~~~ tag @s remove cantbuy2
event entity @e myth:buy_reset_event