scoreboard objectives add Mine1Level dummy
scoreboard objectives add Mine2Level dummy
scoreboard objectives add Mine3Level dummy
scoreboard objectives add StartMine1 dummy
scoreboard objectives add StartMine2 dummy
scoreboard objectives add StartMine3 dummy
scoreboard objectives add RandomMine1 dummy
scoreboard objectives add RandomMine2 dummy
scoreboard objectives add RandomMine3 dummy
scoreboard objectives add Coins dummy
scoreboard objectives add R dummy


structure load 2-1 -114 1 -87
structure load 1-1 31 1 -87
structure load 3-1 -17 1 38



scoreboard players set @e[type=armor_stand,name=Prison] Mine1Level 1
scoreboard players set @e[type=armor_stand,name=Prison] Mine2Level 1
scoreboard players set @e[type=armor_stand,name=Prison] Mine3Level 1

scoreboard players set @e[type=armor_stand,name=Prison] StartMine1 0
scoreboard players set @e[type=armor_stand,name=Prison] StartMine2 0
scoreboard players set @e[type=armor_stand,name=Prison] StartMine3 0

scoreboard players set @e[type=armor_stand,name=Prison] RandomMine1 0
scoreboard players set @e[type=armor_stand,name=Prison] RandomMine2 0
scoreboard players set @e[type=armor_stand,name=Prison] RandomMine3 0

scoreboard players set @a Coins 0
scoreboard players set @e[name=Prison] Coins 0

scoreboard players set @e[type=armor_stand,name=Prison] R 0

scoreboard players set @e[type=armor_stand,name=Prison] Prestige 0

scoreboard players set @e[type=armor_stand,name=Prison] EventTimer 0
scoreboard players set @e[type=armor_stand,name=Prison] Event 0
scoreboard players set @e[type=armor_stand,name=Prison] EventPhase 0
scoreboard players set @e[type=armor_stand,name=Prison] TimerEvent1 0

scoreboard players set @e[type=armor_stand,name=Prison] Tutorial 0
scoreboard players set @e[type=armor_stand,name=Prison] TimerTutorial 0
scoreboard players set @e[name=Prison] Difficulty 1
scoreboard players set @a spawn_level 0
scoreboard players set @e[type=armor_stand,name=Prison] TutorialPhase 0

scoreboard players set @e[type=armor_stand,name=Prison] MineHaste 0

function EventOff


gamemode c @a
tp @a 0 69 -166

kill @e[type=myth:generator_t1]
kill @e[type=myth:generator_t2]
kill @e[type=myth:generator_t3]
kill @e[type=myth:mine1_upgrade_1]
kill @e[type=myth:mine1_upgrade_2]
kill @e[type=myth:mine2_upgrade_1]
kill @e[type=myth:mine2_upgrade_2]
kill @e[type=myth:mine3_upgrade_1]
kill @e[type=myth:mine3_upgrade_2]
kill @e[type=myth:unlock_mine_2]
kill @e[type=myth:unlock_mine_3]
kill @e[type=myth:prestige1]
kill @e[type=myth:prestige2]
kill @e[type=myth:prestige3]
kill @e[type=myth:prestige4]
kill @e[type=myth:prestige5]
kill @e[type=myth:prestige6]
kill @e[type=myth:event1]
kill @e[type=myth:event2]
kill @e[type=myth:event3]
kill @e[type=myth:prison_guard_1]
kill @e[type=myth:prison_guard_2]
kill @e[type=myth:prison_guard_3]
kill @e[type=myth:prison_guard_4]
kill @e[type=myth:prison_guard_5]
kill @e[type=myth:prison_guard_6]
kill @e[type=myth:warden]
kill @e[type=myth:prison_guard_tutorial]
kill @e[type=myth:tutorial_prisoner]

kill @e[type=myth:buy3]
kill @e[type=myth:buy4]
kill @e[type=myth:buy13]
kill @e[type=myth:buy14]
kill @e[type=myth:buy5]
kill @e[type=myth:buy6]
kill @e[type=myth:buy15]
kill @e[type=myth:buy16]

stopsound @a

summon myth:generator_t1 69 69.00 -33
summon myth:mine1_upgrade_1 68 69 -33
structure load Unlock_mine_2 -99 70 -27 270_degrees
structure load Unlock_mine_3 0 70 23 90_degrees
#summon myth:generator_t1 -78 69 -36
#summon myth:mine2_upgrade_1 -79 69 -36
#summon myth:generator_t1 -20 69 31
#summon myth:mine3_upgrade_1 -18 69 31

fill 53 3 -42 43 9 -42 stained_glass 6
fill 53 25 -42 43 31 -42 stained_glass 6
fill -93 3 -42 -102 9 -42 stained_glass 6
fill -93 25 -42 -102 31 -42 stained_glass 6
fill -5 25 37 5 31 37 stained_glass 6
fill -5 3 37 5 9 37 stained_glass 6
fill -97 69 -28 -99 73 -28 stained_glass 6
fill -67 69 -62 -67 72 -64 stained_glass_pane 6
fill -67 69 -66 -67 72 -68 stained_glass_pane 6
fill -117 69 -30 -121 74 -30 stained_glass_pane 6

fill 1 69 23 -1 75 23 stained_glass 6
fill -29 69 52 -29 74 56 stained_glass_pane 6
fill -1 69 93 1 71 93 stained_glass_pane 6


fill 65 45 -43 31 45 -87 polished_blackstone
fill 65 23 -43 31 23 -87 polished_blackstone
fill 65 1 -43 31 1 -87 polished_blackstone

fill -91 45 -43 -114 45 -87 polished_blackstone
fill -91 23 -43 -114 23 -87 polished_blackstone
fill -91 1 -43 -114 1 -87 polished_blackstone


fill -17 45 38 17 45 82 polished_blackstone
fill -17 23 38 17 23 82 polished_blackstone
fill -17 1 38 17 1 82 polished_blackstone









effect @a clear 