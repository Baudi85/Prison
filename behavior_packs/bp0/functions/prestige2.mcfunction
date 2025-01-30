execute @e[type=armor_stand,name=Prison,scores={Prestige=1,Mine3Level=3,Coins=45000..}] ~~~ scoreboard players set @e[type=armor_stand,name=Prison] R 1
execute @e[type=armor_stand,name=Prison,scores={Prestige=1,Mine3Level=3,Coins=..45000,R=0}] ~~~ tellraw @a {"rawtext":[{"text":"§bYou dont have enough §6Coins"}]}

execute @e[type=armor_stand,name=Prison,scores={Prestige=1,R=1}] ~~~ clear @a
execute @e[type=armor_stand,name=Prison,scores={R=1,Prestige=1}] ~ ~ ~ summon myth:prestige3 -7 70 11
execute @e[type=armor_stand,name=Prison,scores={R=1,Prestige=1}] ~ ~ ~ execute @e[type=myth:prestige3,c=1] ~ ~ ~ tp @s ~ ~ ~ 180 0
execute @e[type=armor_stand,name=Prison,scores={R=1,Prestige=1}] ~ ~ ~ execute @e[type=myth:prestige3,c=1] ~ ~ ~ tp @s ~ ~ ~ 180 0
execute @e[type=armor_stand,name=Prison,scores={R=1,Prestige=1}] ~ ~ ~ execute @e[type=myth:prestige3,c=1] ~ ~ ~ tp @s ~ ~ ~ 180 0
execute @e[type=armor_stand,name=Prison,scores={Prestige=1,R=1}] ~~~ scoreboard players remove @a Coins 45000
execute @e[type=armor_stand,name=Prison,scores={Prestige=1,R=1}] ~~~ scoreboard players set @e[type=armor_stand,name=Prison] Coins 0
execute @e[type=armor_stand,name=Prison,scores={Prestige=1,R=1}] ~~~ tp @e[type=myth:prestige2] 48 64 -33 
execute @e[type=armor_stand,name=Prison,scores={Prestige=1,R=1}] ~~~ kill @e[type=myth:prestige2,x=48,y=64,z=-33,r=4]
execute @e[type=armor_stand,name=Prison,scores={Prestige=1,R=1}] ~~~ scoreboard players set @e[type=armor_stand,name=Prison] Prestige 2
execute @e[type=armor_stand,name=Prison,scores={Prestige=2,R=1}] ~~~ scoreboard players set @e[type=armor_stand,name=Prison] R 0