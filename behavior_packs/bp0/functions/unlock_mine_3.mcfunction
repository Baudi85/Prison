execute @e[type=armor_stand,name=Prison,scores={Mine2Level=..2}] ~~~ tellraw @a {"rawtext":[{"text":"§bYou can't buy this mine yet!"}]}

execute @e[type=armor_stand,name=Prison,scores={Mine2Level=3,Coins=10000..}] ~~~ scoreboard players set @e[type=armor_stand,name=Prison] R 1
execute @e[type=armor_stand,name=Prison,scores={Mine2Level=3,Coins=10000..}] ~~~ scoreboard players set @a spawn_level 3
execute @e[type=armor_stand,name=Prison,scores={Mine2Level=3,Coins=..10000,R=0}] ~~~ tellraw @a {"rawtext":[{"text":"§bYou dont have enough Coins"}]}



execute @e[type=armor_stand,name=Prison,scores={R=1}] ~ ~ ~ scoreboard players set @e[type=armor_stand,name=Prison] Mine3Level 1
execute @e[type=armor_stand,name=Prison,scores={R=1}] ~ ~ ~ scoreboard players set @e[type=armor_stand,name=Prison] Difficulty 3
execute @e[type=armor_stand,name=Prison,scores={R=1}] ~ ~ ~ scoreboard players set @e[type=armor_stand,name=Prison] MineHaste 2
execute @e[type=armor_stand,name=Prison,scores={R=1}] ~ ~ ~ scoreboard players remove @a Coins 10000
execute @e[type=armor_stand,name=Prison,scores={R=1}] ~ ~ ~ fill 1 69 23 -1 75 23 air 0
execute @e[type=armor_stand,name=Prison,scores={R=1}] ~ ~ ~ fill -29 69 52 -29 74 56 air 0
execute @e[type=armor_stand,name=Prison,scores={R=1}] ~ ~ ~ fill -1 69 93 1 71 93 air 0

execute @e[type=armor_stand,name=Prison,scores={R=1}] ~ ~ ~ summon myth:generator_t1 -20 69 31
execute @e[type=armor_stand,name=Prison,scores={R=1}] ~ ~ ~ summon myth:mine3_upgrade_1 -18 69 31
execute @e[type=armor_stand,name=Prison,scores={R=1}] ~ ~ ~ execute @e[type=myth:mine3_upgrade_1] ~ ~ ~ tp @s -18.5 ~ ~ 180 0
execute @e[type=armor_stand,name=Prison,scores={R=1}] ~ ~ ~ execute @e[type=myth:mine3_upgrade_1] ~ ~ ~ tp @s -18.5 ~ ~ 180 0
execute @e[type=armor_stand,name=Prison,scores={R=1}] ~ ~ ~ execute @e[type=myth:mine3_upgrade_1] ~ ~ ~ tp @s -18.5 ~ ~ 180 0
execute @e[type=armor_stand,name=Prison,scores={R=1}] ~ ~ ~ summon myth:buy5 -8 69 -26
execute @e[type=armor_stand,name=Prison,scores={R=1}] ~ ~ ~ summon myth:buy6 -8 69 -27
execute @e[type=armor_stand,name=Prison,scores={R=1}] ~ ~ ~ summon myth:buy15 -14 72 -28
execute @e[type=armor_stand,name=Prison,scores={R=1}] ~ ~ ~ summon myth:buy16 -14 72 -29
execute @e[type=armor_stand,name=Prison,scores={R=1}] ~ ~ ~ scoreboard players set @a spawn_level 3
execute @e[type=armor_stand,name=Prison,scores={R=1}] ~ ~ ~ execute @e[type=myth:buy5,c=1] ~ ~ ~ tp @s ~ ~ ~ 270 0
execute @e[type=armor_stand,name=Prison,scores={R=1}] ~ ~ ~ execute @e[type=myth:buy5,c=1] ~ ~ ~ tp @s ~ ~ ~ 270 0
execute @e[type=armor_stand,name=Prison,scores={R=1}] ~ ~ ~ execute @e[type=myth:buy5,c=1] ~ ~ ~ tp @s ~ ~ ~ 270 0
execute @e[type=armor_stand,name=Prison,scores={R=1}] ~ ~ ~ execute @e[type=myth:buy6,c=1] ~ ~ ~ tp @s ~ ~ ~ 270 0
execute @e[type=armor_stand,name=Prison,scores={R=1}] ~ ~ ~ execute @e[type=myth:buy6,c=1] ~ ~ ~ tp @s ~ ~ ~ 270 0
execute @e[type=armor_stand,name=Prison,scores={R=1}] ~ ~ ~ execute @e[type=myth:buy6,c=1] ~ ~ ~ tp @s ~ ~ ~ 270 0
execute @e[type=armor_stand,name=Prison,scores={R=1}] ~ ~ ~ execute @e[type=myth:buy15,c=1] ~ ~ ~ tp @s ~ ~ ~ 270 0
execute @e[type=armor_stand,name=Prison,scores={R=1}] ~ ~ ~ execute @e[type=myth:buy15,c=1] ~ ~ ~ tp @s ~ ~ ~ 270 0
execute @e[type=armor_stand,name=Prison,scores={R=1}] ~ ~ ~ execute @e[type=myth:buy15,c=1] ~ ~ ~ tp @s ~ ~ ~ 270 0
execute @e[type=armor_stand,name=Prison,scores={R=1}] ~ ~ ~ execute @e[type=myth:buy16,c=1] ~ ~ ~ tp @s ~ ~ ~ 270 0
execute @e[type=armor_stand,name=Prison,scores={R=1}] ~ ~ ~ execute @e[type=myth:buy16,c=1] ~ ~ ~ tp @s ~ ~ ~ 270 0
execute @e[type=armor_stand,name=Prison,scores={R=1}] ~ ~ ~ execute @e[type=myth:buy16,c=1] ~ ~ ~ tp @s ~ ~ ~ 270 0




execute @e[type=armor_stand,name=Prison,scores={R=1}] ~ ~ ~ playsound prison.myth.mine.unlock_mine @a


execute @e[type=armor_stand,name=Prison,scores={R=1}] ~ ~ ~ tp @e[type=myth:unlock_mine_3,x=0,y=69,z=23,r=4] 48 64 -33 
execute @e[type=armor_stand,name=Prison,scores={R=1}] ~ ~ ~ kill @e[type=myth:unlock_mine_3,x=48,y=64,z=-33,r=4]

execute @e[type=armor_stand,name=Prison,scores={R=1}] ~ ~ ~ scoreboard players set @e[type=armor_stand,name=Prison] R 0
