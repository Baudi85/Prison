

execute @e[type=armor_stand,name=Prison,scores={Mine2Level=2,Coins=10000..}] ~ ~ ~ scoreboard players set @e[type=armor_stand,name=Prison] R 1
execute @e[type=armor_stand,name=Prison,scores={Mine2Level=2,R=0,Coins=..10000}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§bYou dont have enough §6Coins"}]}

execute @e[type=armor_stand,name=Prison,scores={R=1}] ~ ~ ~ scoreboard players set @e[type=armor_stand,name=Prison] Mine2Level 3
execute @e[type=armor_stand,name=Prison,scores={R=1}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§bYou can now unlock the next mine!"}]}
execute @e[type=armor_stand,name=Prison,scores={R=1}] ~ ~ ~ playsound prison.myth.generator.generator_upgrade_1 @a
execute @e[type=armor_stand,name=Prison,scores={R=1}] ~ ~ ~ scoreboard players remove @a Coins 10000
execute @e[type=armor_stand,name=Prison,scores={R=1}] ~ ~ ~ fill -92 3 -42 -102 9 -42 air 0
execute @e[type=armor_stand,name=Prison,scores={R=1}] ~ ~ ~ setblock -88 70 -37 jungle_button 10
execute @e[type=armor_stand,name=Prison,scores={R=1}] ~ ~ ~ event entity @e[type=myth:generator_t2,x=-78,y=69,z=-36,r=4] myth:run_command
execute @e[type=armor_stand,name=Prison,scores={R=1}] ~ ~ ~ tp @e[type=myth:mine2_upgrade_2,x=-79,y=69,z=-36,r=4] 48 64 -33 
execute @e[type=armor_stand,name=Prison,scores={R=1}] ~ ~ ~ kill @e[type=myth:mine2_upgrade_2,x=48,y=64,z=-33,r=4]
execute @e[type=armor_stand,name=Prison,scores={R=1}] ~ ~ ~ scoreboard players set @e[type=armor_stand,name=Prison] R 0
