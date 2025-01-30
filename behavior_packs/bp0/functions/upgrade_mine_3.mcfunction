

execute @e[type=armor_stand,name=Prison,scores={Mine2Level=1,Coins=7500..}] ~ ~ ~ scoreboard players set @e[type=armor_stand,name=Prison] R 1
execute @e[type=armor_stand,name=Prison,scores={Mine2Level=1,R=0,Coins=..7500}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§bYou dont have enough §6Coins"}]}

execute @e[type=armor_stand,name=Prison,scores={R=1}] ~ ~ ~ scoreboard players set @e[type=armor_stand,name=Prison] Mine2Level 2
execute @e[type=armor_stand,name=Prison,scores={R=1}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§bUpgrade Complete!"}]}
execute @e[type=armor_stand,name=Prison,scores={R=1}] ~ ~ ~ playsound prison.myth.generator.generator_upgrade_1 @a
execute @e[type=armor_stand,name=Prison,scores={R=1}] ~ ~ ~ scoreboard players remove @a Coins 7500
execute @e[type=armor_stand,name=Prison,scores={R=1}] ~ ~ ~ fill -92 25 -42 -102 31 -42 air 0
execute @e[type=armor_stand,name=Prison,scores={R=1}] ~ ~ ~ setblock -88 70 -37 jungle_button 10
execute @e[type=armor_stand,name=Prison,scores={R=1}] ~ ~ ~ event entity @e[type=myth:generator_t1,x=-78,y=69,z=-36,r=4] myth:run_command
execute @e[type=armor_stand,name=Prison,scores={R=1}] ~ ~ ~ event entity @e[type=myth:mine2_upgrade_1,x=-79,y=69,z=-36,r=4] myth:run_command_2
execute @e[type=armor_stand,name=Prison,scores={R=1}] ~ ~ ~ scoreboard players set @e[type=armor_stand,name=Prison] R 0
