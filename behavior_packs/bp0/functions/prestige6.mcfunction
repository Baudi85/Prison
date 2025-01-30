execute @e[type=armor_stand,name=Prison,scores={Prestige=5,Mine3Level=3,Coins=200000..}] ~~~ scoreboard players set @e[type=armor_stand,name=Prison] R 1
execute @e[type=armor_stand,name=Prison,scores={Prestige=5,Mine3Level=3,Coins=..200000,R=0}] ~~~ tellraw @a {"rawtext":[{"text":"§bYou dont have enough §6Coins"}]}

execute @e[type=armor_stand,name=Prison,scores={Prestige=5,R=1}] ~~~ clear @a
execute @e[type=armor_stand,name=Prison,scores={Prestige=5,R=1}] ~~~ scoreboard players remove @a Coins 200000
execute @e[type=armor_stand,name=Prison,scores={Prestige=5,R=1}] ~~~ scoreboard players set @e[type=armor_stand,name=Prison] Coins 0
execute @e[type=armor_stand,name=Prison,scores={Prestige=5,R=1}] ~~~ tp @e[type=myth:prestige6] 48 64 -33 
execute @e[type=armor_stand,name=Prison,scores={Prestige=5,R=1}] ~~~ kill @e[type=myth:prestige6,x=48,y=64,z=-33,r=4]
execute @e[type=armor_stand,name=Prison,scores={Prestige=5,R=1}] ~~~ scoreboard players set @e[type=armor_stand,name=Prison] Prestige 6