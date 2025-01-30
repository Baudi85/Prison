#scoreboard objectives add Mine1Level dummy
#scoreboard objectives add Mine2Level dummy
#scoreboard objectives add Mine3Level dummy
#scoreboard objectives add StartMine1 dummy
#scoreboard objectives add StartMine2 dummy
#scoreboard objectives add StartMine3 dummy
#scoreboard objectives add RandomMine1 dummy
#scoreboard objectives add Prestige dummy
#scoreboard objectives add EventTimer dummy
#scoreboard objectives add Event dummy
#scoreboard objectives add EventPhase dummy
#scoreboard objectives add TimerEvent1 dummy

#coord armorstands 7 8 -33

#structure load 1-1 31 1 -87

#fill 53 25 -42 43 31 -42 stained_glass 6     Mine1 
#fill 53 3 -42 43 9 -42 stained_glass 6     Mine1

#fill 65 45 -43 31 45 -87 polished_blackstone
#fill 65 23 -43 31 23 -87 polished_blackstone
#fill 65 1 -43 31 1 -87 polished_blackstone




#48 47 -40
#67 69 -38
#48 64 -33 armorstand

######################    Mine 1    ###############
execute @e[type=armor_stand,name=Prison,scores={StartMine1=0}] ~ ~ ~ detect 59 70 -37 jungle_button 10 scoreboard players set @e[type=armor_stand,name=Prison] StartMine1 1
execute @e[type=armor_stand,name=Prison,scores={StartMine1=1}] ~ ~ ~ function MineGeneration1



######################    Mine 2    ###############
execute @e[type=armor_stand,name=Prison,scores={StartMine2=0}] ~ ~ ~ detect -88 70 -37 jungle_button 10 scoreboard players set @e[type=armor_stand,name=Prison] StartMine2 1
execute @e[type=armor_stand,name=Prison,scores={StartMine2=1}] ~ ~ ~ function MineGeneration2




######################    Mine 3    ###############
execute @e[type=armor_stand,name=Prison,scores={StartMine3=0}] ~ ~ ~ detect -10 70 32 jungle_button 11 scoreboard players set @e[type=armor_stand,name=Prison] StartMine3 1
execute @e[type=armor_stand,name=Prison,scores={StartMine3=1}] ~ ~ ~ function MineGeneration3

#Prestige

execute @e[type=armor_stand,name=Prison,scores={Prestige=1}] ~~~ effect @a haste 9999 4 true
execute @e[type=armor_stand,name=Prison,scores={Prestige=2}] ~~~ effect @a saturation 9999 1 true
execute @e[type=armor_stand,name=Prison,scores={Prestige=3}] ~~~ effect @a haste 9999 5 true
execute @e[type=armor_stand,name=Prison,scores={Prestige=4}] ~~~ effect @a speed 9999 1 true
execute @e[type=armor_stand,name=Prison,scores={Prestige=5}] ~~~ effect @a strength 9999 1 true



#Haste
execute @e[name=Prison,scores={MineHaste=0}] ~ ~ ~ effect @a haste 9999 0 true
execute @e[name=Prison,scores={MineHaste=1}] ~ ~ ~ effect @a haste 9999 1 true
execute @e[name=Prison,scores={MineHaste=2}] ~ ~ ~ effect @a haste 9999 2 true

#Mobs in walls

execute @e[type=myth:prison_guard_1] ~ ~ ~ tag @s add NoAir
execute @e[type=myth:prison_guard_1] ~ ~ ~ detect ~ ~+1 ~ air 0 tag @s remove NoAir
execute @e[type=myth:prison_guard_1,tag=NoAir] ~ ~ ~ event entity @s[type=myth:prison_guard_1] myth:remove

execute @e[type=myth:prison_guard_2] ~ ~ ~ tag @s add NoAir
execute @e[type=myth:prison_guard_2] ~ ~ ~ detect ~ ~+1 ~ air 0 tag @s remove NoAir
execute @e[type=myth:prison_guard_2,tag=NoAir] ~ ~ ~ event entity @s[type=myth:prison_guard_1] myth:remove

execute @e[type=myth:prison_guard_3] ~ ~ ~ tag @s add NoAir
execute @e[type=myth:prison_guard_3] ~ ~ ~ detect ~ ~+1 ~ air 0 tag @s remove NoAir
execute @e[type=myth:prison_guard_3,tag=NoAir] ~ ~ ~ event entity @s[type=myth:prison_guard_1] myth:remove

execute @e[type=myth:prison_guard_4] ~ ~ ~ tag @s add NoAir
execute @e[type=myth:prison_guard_4] ~ ~ ~ detect ~ ~+1 ~ air 0 tag @s remove NoAir
execute @e[type=myth:prison_guard_4,tag=NoAir] ~ ~ ~ event entity @s[type=myth:prison_guard_1] myth:remove

execute @e[type=myth:prison_guard_5] ~ ~ ~ tag @s add NoAir
execute @e[type=myth:prison_guard_5] ~ ~ ~ detect ~ ~+1 ~ air 0 tag @s remove NoAir
execute @e[type=myth:prison_guard_5,tag=NoAir] ~ ~ ~ event entity @s[type=myth:prison_guard_1] myth:remove

execute @e[type=myth:prison_guard_6] ~ ~ ~ tag @s add NoAir
execute @e[type=myth:prison_guard_6] ~ ~ ~ detect ~ ~+1 ~ air 0 tag @s remove NoAir
execute @e[type=myth:prison_guard_6,tag=NoAir] ~ ~ ~ event entity @s[type=myth:prison_guard_1] myth:remove



#scoreboard
#scoreboard players operation @a Coins -= @a Coins
scoreboard players operation "§ecoins " "§6prison" = @a Coins
scoreboard players operation @e[type=armor_stand,name=Prison] Coins = @a Coins

#####               /scoreboard objectives add OldPlayers dummy

execute @e[type=armor_stand,name=Prison,scores={Tutorial=12..}] ~~~  execute @a[tag=!OldPlayers] ~ ~ ~ scoreboard players set @r[name=Prison,type=armor_stand] OldPlayers 1
execute @e[type=armor_stand,name=Prison,scores={OldPlayers=1}] ~~~ scoreboard players operation @a[tag=!OldPlayers] Coins = @a[tag=OldPlayers] Coins
execute @e[type=armor_stand,name=Prison,scores={OldPlayers=1}] ~~~ give @a[tag=!OldPlayers] wooden_pickaxe 1 0 {"minecraft:can_destroy":{"blocks":["stone","coal_ore"]}} 
execute @e[type=armor_stand,name=Prison,scores={OldPlayers=1}] ~~~ give @a[tag=!OldPlayers] leather_boots
execute @e[type=armor_stand,name=Prison,scores={OldPlayers=1}] ~~~ give @a[tag=!OldPlayers] leather_chestplate
execute @e[type=armor_stand,name=Prison,scores={OldPlayers=1}] ~~~ give @a[tag=!OldPlayers] leather_helmet
execute @e[type=armor_stand,name=Prison,scores={OldPlayers=1}] ~~~ give @a[tag=!OldPlayers] leather_leggings
execute @e[type=armor_stand,name=Prison,scores={OldPlayers=1}] ~~~ give @a[tag=!OldPlayers] cooked_beef 10
execute @e[type=armor_stand,name=Prison,scores={OldPlayers=1}] ~~~ tag @a[tag=!OldPlayers] add OldPlayers
execute @e[type=armor_stand,name=Prison,scores={OldPlayers=1}] ~~~ scoreboard players set @r[name=Prison,type=armor_stand] OldPlayers 0


#Tutorial

execute @e[type=armor_stand,name=Prison,scores={Tutorial=1..}] ~ ~ ~ function Tutorial
#execute @e[type=armor_stand,name=Prison,scores={Tutorial=1..}] ~ ~ ~ say a


#Muzica
#execute @e[type=armor_stand,name=Prison,scores={MusicStart=0}] ~~~ execute @e[type=myth:music_entity] ~ ~ ~ execute @p[dx=58,dy=10,dz=68] ~ ~ ~ say a



playsound prison.myth.alarm.alarm @a ~~~




# Trees
execute @p ~ ~ ~ detect 85 69 43 sapling 0 structure load Tree 83 70 41
execute @p ~ ~ ~ detect 85 69 43 sapling 0 setblock 85 69 43 log
execute @p ~ ~ ~ detect 77 69 43 sapling 0 structure load Tree 75 70 41
execute @p ~ ~ ~ detect 77 69 43 sapling 0 setblock 77 69 43 log
execute @p ~ ~ ~ detect 69 69 43 sapling 0 structure load Tree 67 70 41
execute @p ~ ~ ~ detect 69 69 43 sapling 0 setblock 69 69 43 log

execute @p ~ ~ ~ detect 85 69 35 sapling 0 structure load Tree 83 70 33
execute @p ~ ~ ~ detect 85 69 35 sapling 0 setblock 85 69 35 log
execute @p ~ ~ ~ detect 77 69 35 sapling 0 structure load Tree 75 70 33
execute @p ~ ~ ~ detect 77 69 35 sapling 0 setblock 77 69 35 log
execute @p ~ ~ ~ detect 69 69 35 sapling 0 structure load Tree 67 70 33
execute @p ~ ~ ~ detect 69 69 35 sapling 0 setblock 69 69 35 log

execute @p ~ ~ ~ detect 85 69 27 sapling 0 structure load Tree 83 70 25
execute @p ~ ~ ~ detect 85 69 27 sapling 0 setblock 85 69 27 log
execute @p ~ ~ ~ detect 77 69 27 sapling 0 structure load Tree 75 70 25
execute @p ~ ~ ~ detect 77 69 27 sapling 0 setblock 77 69 27 log
execute @p ~ ~ ~ detect 69 69 27 sapling 0 structure load Tree 67 70 25
execute @p ~ ~ ~ detect 69 69 27 sapling 0 setblock 69 69 27 log

execute @p ~ ~ ~ detect 85 69 19 sapling 0 structure load Tree 83 70 17
execute @p ~ ~ ~ detect 85 69 19 sapling 0 setblock 85 69 19 log
execute @p ~ ~ ~ detect 77 69 19 sapling 0 structure load Tree 75 70 17
execute @p ~ ~ ~ detect 77 69 19 sapling 0 setblock 77 69 19 log
execute @p ~ ~ ~ detect 69 69 19 sapling 0 structure load Tree 67 70 17
execute @p ~ ~ ~ detect 69 69 19 sapling 0 setblock 69 69 19 log

execute @p ~ ~ ~ detect 85 69 11 sapling 0 structure load Tree 83 70 9
execute @p ~ ~ ~ detect 85 69 11 sapling 0 setblock 85 69 11 log
execute @p ~ ~ ~ detect 77 69 11 sapling 0 structure load Tree 75 70 9
execute @p ~ ~ ~ detect 77 69 11 sapling 0 setblock 77 69 11 log
execute @p ~ ~ ~ detect 69 69 11 sapling 0 structure load Tree 67 70 9
execute @p ~ ~ ~ detect 69 69 11 sapling 0 setblock 69 69 11 log




execute @p ~ ~ ~ detect 113 69 43 sapling 0 structure load Tree 111 70 41
execute @p ~ ~ ~ detect 113 69 43 sapling 0 setblock 113 69 43 log
execute @p ~ ~ ~ detect 105 69 43 sapling 0 structure load Tree 103 70 41
execute @p ~ ~ ~ detect 105 69 43 sapling 0 setblock 105 69 43 log
execute @p ~ ~ ~ detect 97 69 43 sapling 0 structure load Tree 95 70 41
execute @p ~ ~ ~ detect 97 69 43 sapling 0 setblock 97 69 43 log

execute @p ~ ~ ~ detect 113 69 35 sapling 0 structure load Tree 111 70 33
execute @p ~ ~ ~ detect 113 69 35 sapling 0 setblock 113 69 35 log
execute @p ~ ~ ~ detect 105 69 35 sapling 0 structure load Tree 103 70 33
execute @p ~ ~ ~ detect 105 69 35 sapling 0 setblock 105 69 35 log
execute @p ~ ~ ~ detect 97 69 35 sapling 0 structure load Tree 95 70 33
execute @p ~ ~ ~ detect 97 69 35 sapling 0 setblock 97 69 35 log

execute @p ~ ~ ~ detect 113 69 27 sapling 0 structure load Tree 111 70 25
execute @p ~ ~ ~ detect 113 69 27 sapling 0 setblock 113 69 27 log
execute @p ~ ~ ~ detect 105 69 27 sapling 0 structure load Tree 103 70 25
execute @p ~ ~ ~ detect 105 69 27 sapling 0 setblock 105 69 27 log
execute @p ~ ~ ~ detect 97 69 27 sapling 0 structure load Tree 95 70 25
execute @p ~ ~ ~ detect 97 69 27 sapling 0 setblock 97 69 27 log

execute @p ~ ~ ~ detect 113 69 19 sapling 0 structure load Tree 111 70 17
execute @p ~ ~ ~ detect 113 69 19 sapling 0 setblock 113 69 19 log
execute @p ~ ~ ~ detect 105 69 19 sapling 0 structure load Tree 103 70 17
execute @p ~ ~ ~ detect 105 69 19 sapling 0 setblock 105 69 19 log
execute @p ~ ~ ~ detect 97 69 19 sapling 0 structure load Tree 95 70 17
execute @p ~ ~ ~ detect 97 69 19 sapling 0 setblock 97 69 19 log

execute @p ~ ~ ~ detect 113 69 11 sapling 0 structure load Tree 111 70 9
execute @p ~ ~ ~ detect 113 69 11 sapling 0 setblock 113 69 11 log
execute @p ~ ~ ~ detect 105 69 11 sapling 0 structure load Tree 103 70 9
execute @p ~ ~ ~ detect 105 69 11 sapling 0 setblock 105 69 11 log
execute @p ~ ~ ~ detect 97 69 11 sapling 0 structure load Tree 95 70 9
execute @p ~ ~ ~ detect 97 69 11 sapling 0 setblock 97 69 11 log







#elevator

execute @p ~~~ detect -28 72 -19 acacia_button 11 tp @p[x=-28,y=72,z=-19,r=10] -27 82 -17
execute @p ~~~ detect -28 72 -19 acacia_button 11 setblock -28 72 -19 acacia_button 3

execute @p ~~~ detect -26 90 -19 birch_button 11 tp @p[x=-26,y=90,z=-19,r=10] -27 82 -17
execute @p ~~~ detect -26 90 -19 birch_button 11 setblock -26 90 -19 birch_button 3

execute @p ~~~ detect -26 72 -19 acacia_button 11 tp @p[x=-26,y=72,z=-19,r=10] -27 90 -17
execute @p ~~~ detect -26 72 -19 acacia_button 11 setblock -26 72 -19 acacia_button 3

execute @p ~~~ detect -26 82 -19 birch_button 11 tp @p[x=-26,y=82,z=-19,r=10] -27 90 -17
execute @p ~~~ detect -26 82 -19 birch_button 11 setblock -26 82 -19 birch_button 3

execute @p ~~~ detect -28 82 -19 birch_button 11 tp @p[x=-28,y=82,z=-19,r=10] -27 72 -17
execute @p ~~~ detect -28 82 -19 birch_button 11 setblock -28 82 -19 birch_button 3

execute @p ~~~ detect -28 90 -19 birch_button 11 tp @p[x=-28,y=90,z=-19,r=10] -27 72 -17
execute @p ~~~ detect -28 90 -19 birch_button 11 setblock -28 90 -19 birch_button 3

execute @p ~~~ detect 26 72 -19 birch_button 11 tp @p[x=26,y=72,z=-19,r=10] 27 82 -17
execute @p ~~~ detect 26 72 -19 birch_button 11 setblock 26 72 -19 birch_button 3

execute @p ~~~ detect 28 90 -19 birch_button 11 tp @p[x=28,y=90,z=-19,r=10] 27 82 -17
execute @p ~~~ detect 28 90 -19 birch_button 11 setblock 28 90 -19 birch_button 3

execute @p ~~~ detect 28 72 -19 birch_button 11 tp @p[x=28,y=72,z=-19,r=10] 27 90 -17
execute @p ~~~ detect 28 72 -19 birch_button 11 setblock 28 72 -19 birch_button 3

execute @p ~~~ detect 26 82 -19 acacia_button 11 tp @p[x=28,y=82,z=-19,r=10] 27 72 -17
execute @p ~~~ detect 26 82 -19 acacia_button 11 setblock 26 82 -19 acacia_button 3

execute @p ~~~ detect 26 90 -19 birch_button 11 tp @p[x=28,y=90,z=-19,r=10] 27 72 -17
execute @p ~~~ detect 26 90 -19 birch_button 11 setblock 26 90 -19 birch_button 3

execute @p ~~~ detect 28 82 -19 birch_button 11 tp @p[x=28,y=82,z=-19,r=10] 27 90 -17
execute @p ~~~ detect 28 82 -19 birch_button 11 setblock 28 82 -19 birch_button 3




#mine tp

#mine 1
execute @p ~~~ detect 35 69 -36 birch_button 10 tp @p[x=35,y=69,z=-36,r=10] 48 47 -38
execute @p ~~~ detect 35 69 -36 birch_button 10 setblock 35 69 -36 birch_button 2

execute @p ~~~ detect 33 69 -36 birch_button 10 tp @p[x=35,y=69,z=-36,r=10] 48 25 -38
execute @p ~~~ detect 33 69 -36 birch_button 10 setblock 33 69 -36 birch_button 2

execute @p ~~~ detect 31 69 -36 birch_button 10 tp @p[x=35,y=69,z=-36,r=10] 48 3 -38
execute @p ~~~ detect 31 69 -36 birch_button 10 setblock 31 69 -36 birch_button 2

execute @p ~~~ detect 48 4 -37 birch_button 10 tp @p[x=48,y=4,z=-37,r=10] 48 69 -37
execute @p ~~~ detect 48 4 -37 birch_button 10 setblock 48 4 -37 birch_button 2

execute @p ~~~ detect 48 26 -37 birch_button 10 tp @p[x=48,y=26,z=-37,r=10] 48 69 -37
execute @p ~~~ detect 48 26 -37 birch_button 10 setblock 48 26 -37 birch_button 2

execute @p ~~~ detect 48 48 -37 birch_button 10 tp @p[x=48,y=47,z=-37,r=10] 48 69 -37
execute @p ~~~ detect 48 48 -37 birch_button 10 setblock 48 48 -37 birch_button 2


#mine 2

execute @p ~~~ detect 14 69 31 acacia_button 11 tp @p[x=14,y=69,z=31,r=10] 0 47 33
execute @p ~~~ detect 14 69 31 acacia_button 11 setblock 14 69 31 acacia_button 3

execute @p ~~~ detect 16 69 31 acacia_button 11 tp @p[x=14,y=69,z=31,r=10] 0 25 33
execute @p ~~~ detect 16 69 31 acacia_button 11 setblock 16 69 31 acacia_button 3

execute @p ~~~ detect 18 69 31 acacia_button 11 tp @p[x=14,y=69,z=31,r=10] 0 3 33
execute @p ~~~ detect 18 69 31 acacia_button 11 setblock 18 69 31 acacia_button 3

execute @p ~~~ detect 0 48 32 acacia_button 11 tp @p[x=0,y=48,z=32,r=10] 0 69 32
execute @p ~~~ detect 0 48 32 acacia_button 11 setblock 0 48 32 acacia_button 3

execute @p ~~~ detect 0 26 32 acacia_button 11 tp @p[x=0,y=26,z=32,r=10] 0 69 32
execute @p ~~~ detect 0 26 32 acacia_button 11 setblock 0 26 32 acacia_button 3

execute @p ~~~ detect 0 4 32 acacia_button 11 tp @p[x=0,y=4,z=32,r=10] 0 69 32
execute @p ~~~ detect 0 4 32 acacia_button 11 setblock 0 4 32 acacia_button 3

#mine 3

execute @p ~~~ detect -111 69 -36 birch_button 10 tp @p[x=-111,y=65,z=-36,r=10] -98 47 -38
execute @p ~~~ detect -111 69 -36 birch_button 11 setblock -111 69 -36 birch_button 3

execute @p ~~~ detect -113 69 -36 birch_button 10 tp @p[x=-113,y=69,z=-36,r=10] -98 25 -38
execute @p ~~~ detect -113 69 -36 birch_button 11 setblock -113 69 -36 birch_button 3

execute @p ~~~ detect -115 69 -36 birch_button 10 tp @p[x=-115,y=69,z=-36,r=10] -98 3 -38
execute @p ~~~ detect -115 69 -36 birch_button 11 setblock -115 69 -36 birch_button 3

execute @p ~~~ detect -98 48 -37 birch_button 10 tp @p[x=-98,y=48,z=-37,r=10] -98 69 -38
execute @p ~~~ detect -98 48 -37 birch_button 11 setblock -98 48 -37 birch_button 3

execute @p ~~~ detect -98 26 -37 birch_button 10 tp @p[x=-98,y=26,z=-37,r=10] -98 69 -38
execute @p ~~~ detect -98 26 -37 birch_button 11 setblock -98 26 -37 birch_button 3

execute @p ~~~ detect -98 4 -37 birch_button 10 tp @p[x=-98,y=4,z=-37,r=10] -98 69 -38
execute @p ~~~ detect -98 4 -37 birch_button 11 setblock -98 4 -37 birch_button 3



#alarm
execute @e[type=armor_stand,name=Prison,tag=EventOn] ~ ~ ~ function alarm






#execute @e[type=myth:event1] ~ ~ ~ execute @p[dx=46,dy=20,dz=20] ~ ~ ~ say a
#execute @e[type=myth:event2] ~ ~ ~ execute @p[dx=65,dy=20,dz=95] ~ ~ ~ say a

#execute @e[type=myth:event2] ~ ~ ~ execute @p[dx=31,dy=20,dz=50] ~ ~ ~ say a


#54 80 -21
#82 80  -60

#-126 66 -2
#-60 65 43