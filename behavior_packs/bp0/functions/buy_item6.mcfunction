#SETS CAN_BUY EQUAL TO PLAYER MONEY. THIS IS TO COPY THAT VALUE OVER TO A NEW VALUE THAT WE CAN EDIT WITHOUT CHANGING PLAYERS MONEY.
scoreboard players operation can_buy var = @a Coins
#SUBTRACTS THE PRICE OF ITEM FROM "CAN_BUY" (WHICH REPRESENTS PLAYER MONEY) TO CHECK IF PLAYER CAN AFFORD ITEM
scoreboard players operation can_buy var -= "Netherite Pickaxe" shop_prices
#ADDS TAGS BASED ON WHETHER OR NOT PLAYER CAN AFFORD ITEM
execute @a ~~~ scoreboard players operation @s shop_prices = can_buy var
execute @a[scores={shop_prices=0..}] ~~~ tag @s add buy6
execute @a[scores={shop_prices=..-1}] ~~~ tag @s add cantbuy6
#TAKES AWAY MONEY AND GIVES ITEM IF PLAYER CAN BUY. WRITES MESSAGE TO ACTIONBAR
execute @p[tag=buy6] ~~~ scoreboard players operation @a Coins -= "Netherite Pickaxe" shop_prices
#execute @p[tag=buy6] ~~~ give @s netherite_pickaxe 1 0 {"minecraft:can_destroy":{"blocks":["stone","coal_ore","gold_ore","iron_ore","redstone_ore","lit_redstone_ore","diamond_ore","ancient_debris"]}}


execute @p[tag=buy6] ~~~ clone 53 57 -30 53 57 -30 46 57 -26
execute @p[tag=buy6] ~~~ fill 46 57 -26 46 57 -26 air 0 destroy
execute @p[tag=buy6] ~~~ tp @e[name="Netherite Pickaxe",x=45,y=57,z=-26,r=4] -6 71 -27
execute @p[tag=buy6] ~~~ kill @e[name=Chest,type=item,x=45,y=57,z=-26,r=4]






execute @p[tag=buy6] ~~~ title @s actionbar You Have Purchased a Netherite Pickaxe.
execute @p[tag=cantbuy6] ~~~ title @s actionbar Keep Digging! You can't afford a Netherite Pickaxe.
#REMOVES BUY AND CANTBUY TAGS
execute @a[tag=buy6] ~~~ tag @s remove buy6
execute @a[tag=cantbuy6] ~~~ tag @s remove cantbuy6
event entity @e myth:buy_reset_event