scoreboard objectives remove shop_prices
scoreboard objectives add var dummy
scoreboard objectives add var2 dummy
scoreboard objectives add shop_prices dummy
scoreboard objectives add Coins dummy
scoreboard objectives add spawn_level dummy
execute @p ~~~ scoreboard players add @s spawn_level 1
function set_shop_prices

