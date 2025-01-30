

execute @e[type=armor_stand,name=Prison,scores={Mine1Level=2,Coins=2500..}] ~ ~ ~ scoreboard players set @e[type=armor_stand,name=Prison] R 1
execute @e[type=armor_stand,name=Prison,scores={Mine1Level=2,R=0,Coins=..2500}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§bYou dont have enough §6Coins"}]}

execute @e[type=armor_stand,name=Prison,scores={R=1}] ~ ~ ~ scoreboard players set @e[type=armor_stand,name=Prison] Mine1Level 3
execute @e[type=armor_stand,name=Prison,scores={R=1}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§bYou can now unlock the next mine!"}]}
execute @e[type=armor_stand,name=Prison,scores={R=1}] ~ ~ ~ playsound prison.myth.generator.generator_upgrade_1 @a
execute @e[type=armor_stand,name=Prison,scores={R=1}] ~ ~ ~ scoreboard players remove @a Coins 2500
execute @e[type=armor_stand,name=Prison,scores={R=1}] ~ ~ ~ fill 53 3 -42 43 9 -42 air 0
execute @e[type=armor_stand,name=Prison,scores={R=1}] ~ ~ ~ setblock 59 70 -37 jungle_button 10
execute @e[type=armor_stand,name=Prison,scores={R=1}] ~ ~ ~ event entity @e[type=myth:generator_t2,x=69,y=69,z=-33,r=4] myth:run_command
execute @e[type=armor_stand,name=Prison,scores={R=1}] ~ ~ ~ tp @e[type=myth:mine1_upgrade_2,x=69,y=69,z=-33,r=4] 48 64 -33 
execute @e[type=armor_stand,name=Prison,scores={R=1}] ~ ~ ~ kill @e[type=myth:mine1_upgrade_2,x=48,y=64,z=-33,r=4]
execute @e[type=armor_stand,name=Prison,scores={R=1}] ~ ~ ~ scoreboard players set @e[type=armor_stand,name=Prison] R 0
