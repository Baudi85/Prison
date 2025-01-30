######################    Mine 2    ###############


execute @e[type=armor_stand,name=Prison,scores={StartMine2=1}] ~ ~ ~ setblock -88 70 -37 jungle_button 2
execute @e[type=armor_stand,name=Prison,scores={StartMine2=1}] ~ ~ ~ scoreboard players random @e[type=armor_stand,name=Prison] RandomMine2 1 20
execute @e[type=armor_stand,name=Prison,scores={StartMine2=1,RandomMine2=1}] ~ ~ ~ structure load 2-1 -114 1 -87
execute @e[type=armor_stand,name=Prison,scores={StartMine2=1,RandomMine2=2}] ~ ~ ~ structure load 2-2 -114 1 -87
execute @e[type=armor_stand,name=Prison,scores={StartMine2=1,RandomMine2=3}] ~ ~ ~ structure load 2-3 -114 1 -87
execute @e[type=armor_stand,name=Prison,scores={StartMine2=1,RandomMine2=4}] ~ ~ ~ structure load 2-4 -114 1 -87
execute @e[type=armor_stand,name=Prison,scores={StartMine2=1,RandomMine2=5}] ~ ~ ~ structure load 2-5 -114 1 -87
execute @e[type=armor_stand,name=Prison,scores={StartMine2=1,RandomMine2=6}] ~ ~ ~ structure load 2-6 -114 1 -87
execute @e[type=armor_stand,name=Prison,scores={StartMine2=1,RandomMine2=7}] ~ ~ ~ structure load 2-7 -114 1 -87
execute @e[type=armor_stand,name=Prison,scores={StartMine2=1,RandomMine2=8}] ~ ~ ~ structure load 2-8 -114 1 -87
execute @e[type=armor_stand,name=Prison,scores={StartMine2=1,RandomMine2=9}] ~ ~ ~ structure load 2-9 -114 1 -87
execute @e[type=armor_stand,name=Prison,scores={StartMine2=1,RandomMine2=10}] ~ ~ ~ structure load 2-10 -114 1 -87
execute @e[type=armor_stand,name=Prison,scores={StartMine2=1,RandomMine2=11}] ~ ~ ~ structure load 2-1 -114 1 -87 180_degrees
execute @e[type=armor_stand,name=Prison,scores={StartMine2=1,RandomMine2=12}] ~ ~ ~ structure load 2-2 -114 1 -87 180_degrees
execute @e[type=armor_stand,name=Prison,scores={StartMine2=1,RandomMine2=13}] ~ ~ ~ structure load 2-3 -114 1 -87 180_degrees
execute @e[type=armor_stand,name=Prison,scores={StartMine2=1,RandomMine2=14}] ~ ~ ~ structure load 2-4 -114 1 -87 180_degrees
execute @e[type=armor_stand,name=Prison,scores={StartMine2=1,RandomMine2=15}] ~ ~ ~ structure load 2-5 -114 1 -87 180_degrees
execute @e[type=armor_stand,name=Prison,scores={StartMine2=1,RandomMine2=16}] ~ ~ ~ structure load 2-6 -114 1 -87 180_degrees
execute @e[type=armor_stand,name=Prison,scores={StartMine2=1,RandomMine2=17}] ~ ~ ~ structure load 2-7 -114 1 -87 180_degrees
execute @e[type=armor_stand,name=Prison,scores={StartMine2=1,RandomMine2=18}] ~ ~ ~ structure load 2-8 -114 1 -87 180_degrees
execute @e[type=armor_stand,name=Prison,scores={StartMine2=1,RandomMine2=19}] ~ ~ ~ structure load 2-9 -114 1 -87 180_degrees
execute @e[type=armor_stand,name=Prison,scores={StartMine2=1,RandomMine2=20}] ~ ~ ~ structure load 2-10 -114 1 -87 180_degrees
execute @e[type=armor_stand,name=Prison,scores={StartMine2=1}] ~ ~ ~ scoreboard players set @e[type=armor_stand,name=Prison] StartMine2 2

execute @e[type=armor_stand,name=Prison,scores={Mine2Level=1,StartMine2=2}] ~ ~ ~ fill -91 45 -43 -114 45 -87 polished_blackstone
execute @e[type=armor_stand,name=Prison,scores={Mine2Level=1,StartMine2=2}] ~ ~ ~ fill -91 23 -43 -114 23 -87 polished_blackstone
execute @e[type=armor_stand,name=Prison,scores={Mine2Level=1,StartMine2=2}] ~ ~ ~ fill -91 1 -43 -114 1 -87 polished_blackstone


execute @e[type=armor_stand,name=Prison,scores={Mine2Level=2,StartMine2=2}] ~ ~ ~ fill -91 23 -43 -114 23 -87 polished_blackstone
execute @e[type=armor_stand,name=Prison,scores={Mine2Level=2,StartMine2=2}] ~ ~ ~ fill -91 1 -43 -114 1 -87 polished_blackstone

execute @e[type=armor_stand,name=Prison,scores={Mine2Leve2=3,StartMine2=2}] ~ ~ ~ fill -91 1 -43 -114 1 -87 polished_blackstone

execute @e[type=armor_stand,name=Prison,scores={StartMine2=2}] ~ ~ ~ scoreboard players set @e[type=armor_stand,name=Prison] StartMine2 0