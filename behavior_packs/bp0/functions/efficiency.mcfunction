tag @p[scores={Coins=550..}] add good
execute @p[tag=good] ~~~ clone 52 61 -29 52 61 -29 46 61 -31
execute @p[tag=good] ~~~ fill 46 61 -31 46 61 -31 air 0 destroy
execute @p[tag=good] ~~~ kill @e[name=Chest,type=item]
tp @e[type=item,name="Enchanted Book"] @p
execute @p[tag=good] ~~~ scoreboard players remove @s Coins 550
execute @p[tag=good] ~~~ tag @s remove good