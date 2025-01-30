

execute @e[type=armor_stand,name=Prison,scores={Mine3Level=2,Coins=20000..}] ~ ~ ~ scoreboard players set @e[type=armor_stand,name=Prison] R 1
execute @e[type=armor_stand,name=Prison,scores={Mine3Level=2,R=0,Coins=..20000}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§bYou dont have enough §6Coins"}]}

execute @e[type=armor_stand,name=Prison,scores={R=1}] ~ ~ ~ scoreboard players set @e[type=armor_stand,name=Prison] Mine3Level 3
execute @e[type=armor_stand,name=Prison,scores={R=1}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§bUpgrade Complete!"}]}
execute @e[type=armor_stand,name=Prison,scores={R=1}] ~ ~ ~ playsound prison.myth.generator.generator_upgrade_1 @a
execute @e[type=armor_stand,name=Prison,scores={R=1}] ~ ~ ~ scoreboard players remove @a Coins 20000
execute @e[type=armor_stand,name=Prison,scores={R=1}] ~ ~ ~ fill -5 3 37 5 9 37 air 0
execute @e[type=armor_stand,name=Prison,scores={R=1}] ~ ~ ~ setblock -10 70 32 jungle_button 11
execute @e[type=armor_stand,name=Prison,scores={R=1}] ~ ~ ~ event entity @e[type=myth:generator_t2,x=-20,y=69,z=31,r=4] myth:run_command
execute @e[type=armor_stand,name=Prison,scores={R=1}] ~ ~ ~ tp @e[type=myth:mine3_upgrade_2,x=-18,y=69,z=31,r=4] 48 64 -33 
execute @e[type=armor_stand,name=Prison,scores={R=1}] ~ ~ ~ kill @e[type=myth:mine3_upgrade_2,x=48,y=64,z=-33,r=4]
execute @e[type=armor_stand,name=Prison,scores={R=1,Prestige=0}] ~ ~ ~ summon myth:prestige1 -7 70 11
execute @e[type=armor_stand,name=Prison,scores={R=1,Prestige=0}] ~ ~ ~ execute @e[type=myth:prestige1,c=1] ~ ~ ~ tp @s ~ ~ ~ 180 0
execute @e[type=armor_stand,name=Prison,scores={R=1,Prestige=0}] ~ ~ ~ execute @e[type=myth:prestige1,c=1] ~ ~ ~ tp @s ~ ~ ~ 180 0
execute @e[type=armor_stand,name=Prison,scores={R=1,Prestige=0}] ~ ~ ~ execute @e[type=myth:prestige1,c=1] ~ ~ ~ tp @s ~ ~ ~ 180 0
#execute @e[type=armor_stand,name=Prison,scores={R=1,Prestige=1}] ~ ~ ~ structure load Prestige2 -7 70 11 180_degrees
#execute @e[type=armor_stand,name=Prison,scores={R=1,Prestige=2}] ~ ~ ~ structure load Prestige3 -7 70 11 180_degrees
#execute @e[type=armor_stand,name=Prison,scores={R=1,Prestige=3}] ~ ~ ~ structure load Prestige4 -7 70 11 180_degrees
#execute @e[type=armor_stand,name=Prison,scores={R=1,Prestige=4}] ~ ~ ~ structure load Prestige5 -7 70 11 180_degrees
#execute @e[type=armor_stand,name=Prison,scores={R=1,Prestige=5}] ~ ~ ~ structure load Prestige6 -7 70 11 180_degrees
execute @e[type=armor_stand,name=Prison,scores={R=1}] ~ ~ ~ scoreboard players set @e[type=armor_stand,name=Prison] R 0
