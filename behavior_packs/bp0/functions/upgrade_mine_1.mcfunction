

execute @e[type=armor_stand,name=Prison,scores={Mine1Level=1,Coins=1000..}] ~ ~ ~ scoreboard players set @e[type=armor_stand,name=Prison] R 1
execute @e[type=armor_stand,name=Prison,scores={Mine1Level=1,R=0,Coins=..1000}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§bYou dont have enough §6Coins"}]}

execute @e[type=armor_stand,name=Prison,scores={R=1}] ~ ~ ~ scoreboard players set @e[type=armor_stand,name=Prison] Mine1Level 2
execute @e[type=armor_stand,name=Prison,scores={R=1}] ~ ~ ~ playsound prison.myth.generator.generator_upgrade_1 @a
execute @e[type=armor_stand,name=Prison,scores={R=1}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§bUpgrade Complete!"}]}
execute @e[type=armor_stand,name=Prison,scores={R=1}] ~ ~ ~ scoreboard players remove @a Coins 1000
execute @e[type=armor_stand,name=Prison,scores={R=1}] ~ ~ ~ fill 53 25 -42 43 31 -42 air 0
execute @e[type=armor_stand,name=Prison,scores={R=1}] ~ ~ ~ setblock 59 70 -37 jungle_button 10
execute @e[type=armor_stand,name=Prison,scores={R=1}] ~ ~ ~ event entity @e[type=myth:generator_t1,x=69,y=69,z=-33,r=4] myth:run_command
execute @e[type=armor_stand,name=Prison,scores={R=1}] ~ ~ ~ event entity @e[type=myth:mine1_upgrade_1,x=69,y=69,z=-33,r=4] myth:run_command_2
execute @e[type=armor_stand,name=Prison,scores={R=1}] ~ ~ ~ scoreboard players set @e[type=armor_stand,name=Prison] R 0
