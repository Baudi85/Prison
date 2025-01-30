execute @e[type=armor_stand,name=Prison,scores={Mine1Level=..2}] ~~~ tellraw @a {"rawtext":[{"text":"§bYou can't buy this mine yet!"}]}

execute @e[type=armor_stand,name=Prison,scores={Mine1Level=3,Coins=5000..}] ~~~ scoreboard players set @e[type=armor_stand,name=Prison] R 1
execute @e[type=armor_stand,name=Prison,scores={Mine1Level=3,Coins=5000..}] ~~~ scoreboard players set @a spawn_level 2
execute @e[type=armor_stand,name=Prison,scores={Mine1Level=3,Coins=..5000,R=0}] ~~~ tellraw @a {"rawtext":[{"text":"§bYou dont have enough Coins"}]}



execute @e[type=armor_stand,name=Prison,scores={R=1}] ~ ~ ~ scoreboard players set @e[type=armor_stand,name=Prison] Mine2Level 1
execute @e[type=armor_stand,name=Prison,scores={R=1}] ~ ~ ~ scoreboard players set @e[type=armor_stand,name=Prison] Difficulty 2
execute @e[type=armor_stand,name=Prison,scores={R=1}] ~ ~ ~ scoreboard players set @e[type=armor_stand,name=Prison] MineHaste 1
execute @e[type=armor_stand,name=Prison,scores={R=1}] ~ ~ ~ scoreboard players remove @a Coins 5000
execute @e[type=armor_stand,name=Prison,scores={R=1}] ~ ~ ~ scoreboard players set @a spawn_level 2
execute @e[type=armor_stand,name=Prison,scores={R=1}] ~ ~ ~ fill -97 69 -28 -99 73 -28 air
execute @e[type=armor_stand,name=Prison,scores={R=1}] ~ ~ ~ fill -67 69 -62 -67 72 -64 air
execute @e[type=armor_stand,name=Prison,scores={R=1}] ~ ~ ~ fill -67 69 -66 -67 72 -68 air
execute @e[type=armor_stand,name=Prison,scores={R=1}] ~ ~ ~ fill -117 69 -30 -121 74 -30 air
execute @e[type=armor_stand,name=Prison,scores={R=1}] ~ ~ ~ summon myth:generator_t1 -78 69 -36
execute @e[type=armor_stand,name=Prison,scores={R=1}] ~ ~ ~ summon myth:mine2_upgrade_1 -79 69 -36
execute @e[type=armor_stand,name=Prison,scores={R=1}] ~ ~ ~ summon myth:buy4 -8 69 -25
execute @e[type=armor_stand,name=Prison,scores={R=1}] ~ ~ ~ summon myth:buy13 -8 69 -34
execute @e[type=armor_stand,name=Prison,scores={R=1}] ~ ~ ~ summon myth:buy14 -14 72 -27
execute @e[type=armor_stand,name=Prison,scores={R=1}] ~ ~ ~ execute @e[type=myth:generator_t1,c=1] ~ ~ ~ tp @s ~ ~ ~ 180 0
execute @e[type=armor_stand,name=Prison,scores={R=1}] ~ ~ ~ execute @e[type=myth:generator_t1,c=1] ~ ~ ~ tp @s ~ ~ ~ 180 0
execute @e[type=armor_stand,name=Prison,scores={R=1}] ~ ~ ~ execute @e[type=myth:generator_t1,c=1] ~ ~ ~ tp @s ~ ~ ~ 180 0
execute @e[type=armor_stand,name=Prison,scores={R=1}] ~ ~ ~ execute @e[type=myth:buy4,c=1] ~ ~ ~ tp @s ~ ~ ~ 270 0
execute @e[type=armor_stand,name=Prison,scores={R=1}] ~ ~ ~ execute @e[type=myth:buy4,c=1] ~ ~ ~ tp @s ~ ~ ~ 270 0
execute @e[type=armor_stand,name=Prison,scores={R=1}] ~ ~ ~ execute @e[type=myth:buy4,c=1] ~ ~ ~ tp @s ~ ~ ~ 270 0
execute @e[type=armor_stand,name=Prison,scores={R=1}] ~ ~ ~ execute @e[type=myth:buy13,c=1] ~ ~ ~ tp @s ~ ~ ~ 270 0
execute @e[type=armor_stand,name=Prison,scores={R=1}] ~ ~ ~ execute @e[type=myth:buy13,c=1] ~ ~ ~ tp @s ~ ~ ~ 270 0
execute @e[type=armor_stand,name=Prison,scores={R=1}] ~ ~ ~ execute @e[type=myth:buy13,c=1] ~ ~ ~ tp @s ~ ~ ~ 270 0
execute @e[type=armor_stand,name=Prison,scores={R=1}] ~ ~ ~ execute @e[type=myth:buy14,c=1] ~ ~ ~ tp @s ~ ~ ~ 270 0
execute @e[type=armor_stand,name=Prison,scores={R=1}] ~ ~ ~ execute @e[type=myth:buy14,c=1] ~ ~ ~ tp @s ~ ~ ~ 270 0
execute @e[type=armor_stand,name=Prison,scores={R=1}] ~ ~ ~ execute @e[type=myth:buy14,c=1] ~ ~ ~ tp @s ~ ~ ~ 270 0
execute @e[type=armor_stand,name=Prison,scores={R=1}] ~ ~ ~ playsound prison.myth.mine.unlock_mine @a

execute @e[type=armor_stand,name=Prison,scores={R=1}] ~ ~ ~ tp @e[type=myth:unlock_mine_2,x=-98,y=69,z=-27,r=4] 48 64 -33 
execute @e[type=armor_stand,name=Prison,scores={R=1}] ~ ~ ~ kill @e[type=myth:unlock_mine_2,x=48,y=64,z=-33,r=4]

execute @e[type=armor_stand,name=Prison,scores={R=1}] ~ ~ ~ scoreboard players set @e[type=armor_stand,name=Prison] R 0