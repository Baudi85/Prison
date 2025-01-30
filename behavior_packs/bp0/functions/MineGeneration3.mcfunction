######################    Mine 3    ###############


execute @e[type=armor_stand,name=Prison,scores={StartMine3=1}] ~ ~ ~ setblock -10 70 32 jungle_button 3
execute @e[type=armor_stand,name=Prison,scores={StartMine3=1}] ~ ~ ~ scoreboard players random @e[type=armor_stand,name=Prison] RandomMine3 1 20
execute @e[type=armor_stand,name=Prison,scores={StartMine3=1,RandomMine3=1}] ~ ~ ~ structure load 3-1 -17 1 38
execute @e[type=armor_stand,name=Prison,scores={StartMine3=1,RandomMine3=2}] ~ ~ ~ structure load 3-2 -17 1 38
execute @e[type=armor_stand,name=Prison,scores={StartMine3=1,RandomMine3=3}] ~ ~ ~ structure load 3-3 -17 1 38
execute @e[type=armor_stand,name=Prison,scores={StartMine3=1,RandomMine3=4}] ~ ~ ~ structure load 3-4 -17 1 38
execute @e[type=armor_stand,name=Prison,scores={StartMine3=1,RandomMine3=5}] ~ ~ ~ structure load 3-5 -17 1 38
execute @e[type=armor_stand,name=Prison,scores={StartMine3=1,RandomMine3=6}] ~ ~ ~ structure load 3-6 -17 1 38
execute @e[type=armor_stand,name=Prison,scores={StartMine3=1,RandomMine3=7}] ~ ~ ~ structure load 3-7 -17 1 38
execute @e[type=armor_stand,name=Prison,scores={StartMine3=1,RandomMine3=8}] ~ ~ ~ structure load 3-8 -17 1 38
execute @e[type=armor_stand,name=Prison,scores={StartMine3=1,RandomMine3=9}] ~ ~ ~ structure load 3-9 -17 1 38
execute @e[type=armor_stand,name=Prison,scores={StartMine3=1,RandomMine3=10}] ~ ~ ~ structure load 3-10 -17 1 38
execute @e[type=armor_stand,name=Prison,scores={StartMine3=1,RandomMine3=11}] ~ ~ ~ structure load 3-1 -17 1 38 180_degrees
execute @e[type=armor_stand,name=Prison,scores={StartMine3=1,RandomMine3=12}] ~ ~ ~ structure load 3-2 -17 1 38 180_degrees
execute @e[type=armor_stand,name=Prison,scores={StartMine3=1,RandomMine3=13}] ~ ~ ~ structure load 3-3 -17 1 38 180_degrees
execute @e[type=armor_stand,name=Prison,scores={StartMine3=1,RandomMine3=14}] ~ ~ ~ structure load 3-4 -17 1 38 180_degrees
execute @e[type=armor_stand,name=Prison,scores={StartMine3=1,RandomMine3=15}] ~ ~ ~ structure load 3-5 -17 1 38 180_degrees
execute @e[type=armor_stand,name=Prison,scores={StartMine3=1,RandomMine3=16}] ~ ~ ~ structure load 3-6 -17 1 38 180_degrees
execute @e[type=armor_stand,name=Prison,scores={StartMine3=1,RandomMine3=17}] ~ ~ ~ structure load 3-7 -17 1 38 180_degrees
execute @e[type=armor_stand,name=Prison,scores={StartMine3=1,RandomMine3=18}] ~ ~ ~ structure load 3-8 -17 1 38 180_degrees
execute @e[type=armor_stand,name=Prison,scores={StartMine3=1,RandomMine3=19}] ~ ~ ~ structure load 3-9 -17 1 38 180_degrees
execute @e[type=armor_stand,name=Prison,scores={StartMine3=1,RandomMine3=20}] ~ ~ ~ structure load 3-10 -17 1 38 180_degrees



execute @e[type=armor_stand,name=Prison,scores={StartMine3=1}] ~ ~ ~ scoreboard players set @e[type=armor_stand,name=Prison] StartMine3 2

execute @e[type=armor_stand,name=Prison,scores={Mine3Level=1,StartMine3=2}] ~ ~ ~ fill -17 45 38 17 45 82 polished_blackstone
execute @e[type=armor_stand,name=Prison,scores={Mine3Level=1,StartMine3=2}] ~ ~ ~ fill -17 23 38 17 23 82 polished_blackstone
execute @e[type=armor_stand,name=Prison,scores={Mine3Level=1,StartMine3=2}] ~ ~ ~ fill -17 1 38 17 1 82 polished_blackstone


execute @e[type=armor_stand,name=Prison,scores={Mine3Level=2,StartMine3=2}] ~ ~ ~ fill -17 23 38 17 23 82 polished_blackstone
execute @e[type=armor_stand,name=Prison,scores={Mine3Level=2,StartMine3=2}] ~ ~ ~ fill -17 1 38 17 1 82 polished_blackstone

execute @e[type=armor_stand,name=Prison,scores={Mine3Leve2=3,StartMine3=2}] ~ ~ ~ fill -17 1 38 17 1 82 polished_blackstone

execute @e[type=armor_stand,name=Prison,scores={StartMine3=2}] ~ ~ ~ scoreboard players set @e[type=armor_stand,name=Prison] StartMine3 0