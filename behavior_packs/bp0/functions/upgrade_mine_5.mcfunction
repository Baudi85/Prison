

execute @e[type=armor_stand,name=Prison,scores={Mine3Level=1,Coins=15000..}] ~ ~ ~ scoreboard players set @e[type=armor_stand,name=Prison] R 1
execute @e[type=armor_stand,name=Prison,scores={Mine3Level=1,R=0,Coins=..15000}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§bYou dont have enough §6Coins"}]}

execute @e[type=armor_stand,name=Prison,scores={R=1}] ~ ~ ~ scoreboard players set @e[type=armor_stand,name=Prison] Mine3Level 2
execute @e[type=armor_stand,name=Prison,scores={R=1}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§bUpgrade Complete!"}]}
execute @e[type=armor_stand,name=Prison,scores={R=1}] ~ ~ ~ playsound prison.myth.generator.generator_upgrade_1 @a
execute @e[type=armor_stand,name=Prison,scores={R=1}] ~ ~ ~ scoreboard players remove @a Coins 15000
execute @e[type=armor_stand,name=Prison,scores={R=1}] ~ ~ ~ fill -5 25 37 5 31 37 air 0
execute @e[type=armor_stand,name=Prison,scores={R=1}] ~ ~ ~ setblock -10 70 32 jungle_button 11
execute @e[type=armor_stand,name=Prison,scores={R=1}] ~ ~ ~ event entity @e[type=myth:generator_t1,x=-20,y=69,z=31,r=4] myth:run_command
execute @e[type=armor_stand,name=Prison,scores={R=1}] ~ ~ ~ event entity @e[type=myth:mine3_upgrade_1,x=-18,y=69,z=31,r=4] myth:run_command_2
execute @e[type=armor_stand,name=Prison,scores={R=1}] ~ ~ ~ scoreboard players set @e[type=armor_stand,name=Prison] R 0
