######################    Mine 1    ###############



execute @e[type=armor_stand,name=Prison,scores={StartMine1=1}] ~ ~ ~ setblock 59 70 -37 jungle_button 2
execute @e[type=armor_stand,name=Prison,scores={StartMine1=1}] ~ ~ ~ scoreboard players random @e[type=armor_stand,name=Prison] RandomMine1 1 20
execute @e[type=armor_stand,name=Prison,scores={StartMine1=1,RandomMine1=1}] ~ ~ ~ structure load 1-1 31 1 -87
execute @e[type=armor_stand,name=Prison,scores={StartMine1=1,RandomMine1=2}] ~ ~ ~ structure load 1-2 31 1 -87
execute @e[type=armor_stand,name=Prison,scores={StartMine1=1,RandomMine1=3}] ~ ~ ~ structure load 1-3 31 1 -87
execute @e[type=armor_stand,name=Prison,scores={StartMine1=1,RandomMine1=4}] ~ ~ ~ structure load 1-4 31 1 -87
execute @e[type=armor_stand,name=Prison,scores={StartMine1=1,RandomMine1=5}] ~ ~ ~ structure load 1-5 31 1 -87
execute @e[type=armor_stand,name=Prison,scores={StartMine1=1,RandomMine1=6}] ~ ~ ~ structure load 1-6 31 1 -87
execute @e[type=armor_stand,name=Prison,scores={StartMine1=1,RandomMine1=7}] ~ ~ ~ structure load 1-7 31 1 -87
execute @e[type=armor_stand,name=Prison,scores={StartMine1=1,RandomMine1=8}] ~ ~ ~ structure load 1-8 31 1 -87
execute @e[type=armor_stand,name=Prison,scores={StartMine1=1,RandomMine1=9}] ~ ~ ~ structure load 1-9 31 1 -87
execute @e[type=armor_stand,name=Prison,scores={StartMine1=1,RandomMine1=10}] ~ ~ ~ structure load 1-10 31 1 -87
execute @e[type=armor_stand,name=Prison,scores={StartMine1=1,RandomMine1=11}] ~ ~ ~ structure load 1-1 31 1 -87 180_degrees
execute @e[type=armor_stand,name=Prison,scores={StartMine1=1,RandomMine1=12}] ~ ~ ~ structure load 1-2 31 1 -87 180_degrees
execute @e[type=armor_stand,name=Prison,scores={StartMine1=1,RandomMine1=13}] ~ ~ ~ structure load 1-3 31 1 -87 180_degrees
execute @e[type=armor_stand,name=Prison,scores={StartMine1=1,RandomMine1=14}] ~ ~ ~ structure load 1-4 31 1 -87 180_degrees
execute @e[type=armor_stand,name=Prison,scores={StartMine1=1,RandomMine1=15}] ~ ~ ~ structure load 1-5 31 1 -87 180_degrees
execute @e[type=armor_stand,name=Prison,scores={StartMine1=1,RandomMine1=16}] ~ ~ ~ structure load 1-6 31 1 -87 180_degrees
execute @e[type=armor_stand,name=Prison,scores={StartMine1=1,RandomMine1=17}] ~ ~ ~ structure load 1-7 31 1 -87 180_degrees
execute @e[type=armor_stand,name=Prison,scores={StartMine1=1,RandomMine1=18}] ~ ~ ~ structure load 1-8 31 1 -87 180_degrees
execute @e[type=armor_stand,name=Prison,scores={StartMine1=1,RandomMine1=19}] ~ ~ ~ structure load 1-9 31 1 -87 180_degrees
execute @e[type=armor_stand,name=Prison,scores={StartMine1=1,RandomMine1=20}] ~ ~ ~ structure load 1-10 31 1 -87 180_degrees
execute @e[type=armor_stand,name=Prison,scores={StartMine1=1}] ~ ~ ~ scoreboard players set @e[type=armor_stand,name=Prison] StartMine1 2

execute @e[type=armor_stand,name=Prison,scores={Mine1Level=1,StartMine1=2}] ~ ~ ~ fill 65 45 -43 31 45 -87 polished_blackstone
execute @e[type=armor_stand,name=Prison,scores={Mine1Level=1,StartMine1=2}] ~ ~ ~ fill 65 23 -43 31 23 -87 polished_blackstone
execute @e[type=armor_stand,name=Prison,scores={Mine1Level=1,StartMine1=2}] ~ ~ ~ fill 65 1 -43 31 1 -87 polished_blackstone


execute @e[type=armor_stand,name=Prison,scores={Mine1Level=2,StartMine1=2}] ~ ~ ~ fill 65 23 -43 31 23 -87 polished_blackstone
execute @e[type=armor_stand,name=Prison,scores={Mine1Level=2,StartMine1=2}] ~ ~ ~ fill 65 1 -43 31 1 -87 polished_blackstone

execute @e[type=armor_stand,name=Prison,scores={Mine1Level=3,StartMine1=2}] ~ ~ ~ fill 65 1 -43 31 1 -87 polished_blackstone

execute @e[type=armor_stand,name=Prison,scores={StartMine1=2}] ~ ~ ~ scoreboard players set @e[type=armor_stand,name=Prison] StartMine1 0