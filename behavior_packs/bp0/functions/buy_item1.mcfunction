#SETS CAN_BUY EQUAL TO PLAYER MONEY. THIS IS TO COPY THAT VALUE OVER TO A NEW VALUE THAT WE CAN EDIT WITHOUT CHANGING PLAYERS MONEY.
scoreboard players operation can_buy var = @a Coins
#SUBTRACTS THE PRICE OF ITEM FROM "CAN_BUY" (WHICH REPRESENTS PLAYER MONEY) TO CHECK IF PLAYER CAN AFFORD ITEM
scoreboard players operation can_buy var -= "Wooden Pickaxe" shop_prices
#ADDS TAGS BASED ON WHETHER OR NOT PLAYER CAN AFFORD ITEM
execute @a ~~~ scoreboard players operation @s shop_prices = can_buy var
execute @a[scores={shop_prices=0..}] ~~~ tag @s add buy1
execute @a[scores={shop_prices=..-1}] ~~~ tag @s add cantbuy1
#TAKES AWAY MONEY AND GIVES ITEM IF PLAYER CAN BUY. WRITES MESSAGE TO ACTIONBAR
execute @p[tag=buy1] ~~~ scoreboard players operation @a Coins -= "Wooden Pickaxe" shop_prices
#execute @p[tag=buy1] ~~~ give @s wooden_pickaxe 1 0 {"minecraft:can_destroy":{"blocks":["stone","coal_ore"]}}

execute @p[tag=buy1] ~~~ clone 46 57 -31 46 57 -31 46 57 -26
execute @p[tag=buy1] ~~~ fill 46 57 -26 46 57 -26 air 0 destroy
execute @p[tag=buy1] ~~~ tp @e[name="Wooden Pickaxe",x=45,y=57,z=-26,r=4] -6 71 -22
execute @p[tag=buy1] ~~~ kill @e[name=Chest,type=item,x=45,y=57,z=-26,r=4]


execute @p[tag=buy1] ~~~ title @s actionbar You Have Purchased 1 Wooden Pickaxe.
execute @p[tag=cantbuy1] ~~~ title @s actionbar Keep Digging! You can't afford a Wooden Pickaxe.
#REMOVES BUY AND CANTBUY TAGS
execute @a[tag=buy1] ~~~ tag @s remove buy1
execute @a[tag=cantbuy1] ~~~ tag @s remove cantbuy1
event entity @e myth:buy_reset_event

