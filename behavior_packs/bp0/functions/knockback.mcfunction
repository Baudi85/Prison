tag @p[scores={Coins=350..}] add good
execute @p[tag=good] ~~~ clone 52 61 -33 52 61 -33 46 61 -31
execute @p[tag=good] ~~~ fill 46 61 -31 46 61 -31 air 0 destroy
execute @p[tag=good] ~~~ kill @e[name=Chest,type=item]
tp @e[type=item,name="Enchanted Book"] @p
execute @p[tag=good] ~~~ scoreboard players remove @s Coins 350
execute @p[tag=good] ~~~ tag @s remove good