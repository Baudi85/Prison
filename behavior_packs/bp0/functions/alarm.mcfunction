#alarm
#§

execute @s[type=armor_stand,name=Prison,scores={Event=0},tag=EventOn] ~~~ scoreboard players add @e[type=armor_stand,name=Prison] EventTimer 1
execute @s[type=armor_stand,name=Prison,scores={Event=0,EventTimer=6000}] ~~~ scoreboard players random @e[type=armor_stand,name=Prison] Event 1 20

execute @s[type=armor_stand,name=Prison,scores={Event=1}] ~~~ scoreboard players add @e[type=armor_stand,name=Prison] TimerAlarm 1
execute @s[type=armor_stand,name=Prison,scores={Event=1,TimerAlarm=20}] ~~~ playsound prison.myth.alarm.alarm @a
execute @s[type=armor_stand,name=Prison,scores={Event=1,TimerAlarm=40}] ~~~ playsound prison.myth.alarm.alarm @a
execute @s[type=armor_stand,name=Prison,scores={Event=1,TimerAlarm=60}] ~~~ playsound prison.myth.alarm.alarm @a
execute @s[type=armor_stand,name=Prison,scores={Event=1}] ~~~ scoreboard players add @e[type=armor_stand,name=Prison] TimerEvent1 1
execute @s[type=armor_stand,name=Prison,scores={Event=1,EventPhase=0}] ~~~ tellraw @a {"rawtext":[{"text":"§bHead to the Tree Farm!"}]}
execute @s[type=armor_stand,name=Prison,scores={Event=1,EventPhase=0}] ~~~ summon myth:event1 59 66 -4
execute @s[type=armor_stand,name=Prison,scores={Event=1,EventPhase=0}] ~~~ scoreboard players set @e[type=armor_stand,name=Prison] EventPhase 1
execute @s[type=armor_stand,name=Prison,scores={Event=1,EventPhase=1}] ~~~ execute @e[type=myth:event1] ~ ~ ~ execute @a[dx=63,dy=10,dz=57] ~ ~ ~ scoreboard players set @e[type=armor_stand,name=Prison] EventPhase 2
execute @s[type=armor_stand,name=Prison,scores={Event=1,EventPhase=2}] ~~~ tellraw @a {"rawtext":[{"text":"Good job! You made it..."}]} 
execute @s[type=armor_stand,name=Prison,scores={Event=1,EventPhase=2}] ~~~ tellraw @a {"rawtext":[{"text":"§2+35 coins"}]} 
execute @s[type=armor_stand,name=Prison,scores={Event=1,EventPhase=2}] ~~~ playsound prison.myth.generator.generator_upgrade_1 @a
execute @s[type=armor_stand,name=Prison,scores={Event=1,EventPhase=2}] ~~~ scoreboard players add @a Coins 35
execute @s[type=armor_stand,name=Prison,scores={Event=1,EventPhase=2}] ~~~ function EventReset

execute @s[type=armor_stand,name=Prison,scores={Event=1,EventPhase=1,TimerEvent1=1100}] ~~~ scoreboard players set @e[type=armor_stand,name=Prison] EventPhase 3
execute @s[type=armor_stand,name=Prison,scores={Event=1,EventPhase=1,TimerEvent1=900}] ~~~ tellraw @a {"rawtext":[{"text":"§bHurry up!"}]} 
execute @s[type=armor_stand,name=Prison,scores={Event=1,EventPhase=1,TimerEvent1=920}] ~~~ title @a actionbar 9
execute @s[type=armor_stand,name=Prison,scores={Event=1,EventPhase=1,TimerEvent1=940}] ~~~ title @a actionbar 8
execute @s[type=armor_stand,name=Prison,scores={Event=1,EventPhase=1,TimerEvent1=960}] ~~~ title @a actionbar 7
execute @s[type=armor_stand,name=Prison,scores={Event=1,EventPhase=1,TimerEvent1=980}] ~~~ title @a actionbar 6
execute @s[type=armor_stand,name=Prison,scores={Event=1,EventPhase=1,TimerEvent1=1000}] ~~~ title @a actionbar 5
execute @s[type=armor_stand,name=Prison,scores={Event=1,EventPhase=1,TimerEvent1=1020}] ~~~ title @a actionbar 4
execute @s[type=armor_stand,name=Prison,scores={Event=1,EventPhase=1,TimerEvent1=1040}] ~~~ title @a actionbar 3
execute @s[type=armor_stand,name=Prison,scores={Event=1,EventPhase=1,TimerEvent1=1060}] ~~~ title @a actionbar 2
execute @s[type=armor_stand,name=Prison,scores={Event=1,EventPhase=1,TimerEvent1=1080}] ~~~ title @a actionbar 1

execute @s[type=armor_stand,name=Prison,scores={Event=1,EventPhase=3}] ~~~playsound prison.myth.alarm.alarm @a
execute @s[type=armor_stand,name=Prison,scores={Event=1,EventPhase=3,Difficulty=1}] ~~~ execute @a ~~~ summon myth:prison_guard_1 ^3 ^1 ^1
execute @s[type=armor_stand,name=Prison,scores={Event=1,EventPhase=3,Difficulty=1}] ~~~ execute @a ~~~ summon myth:prison_guard_1 ^3 ^1 ^3
execute @s[type=armor_stand,name=Prison,scores={Event=1,EventPhase=3,Difficulty=1}] ~~~ execute @a ~~~ summon myth:prison_guard_1 ^-3 ^1 ^3
execute @s[type=armor_stand,name=Prison,scores={Event=1,EventPhase=3,Difficulty=1}] ~~~ execute @a ~~~ summon myth:prison_guard_1 ^3 ^1 ^-3
execute @s[type=armor_stand,name=Prison,scores={Event=1,EventPhase=3,Difficulty=1}] ~~~ tellraw @a {"rawtext":[{"text":"§4Oh, no! You didn't make it in time..."}]} 

execute @s[type=armor_stand,name=Prison,scores={Event=1,EventPhase=3,Difficulty=2}] ~~~ execute @a ~~~ summon myth:prison_guard_3 ^3 ^1 ^1
execute @s[type=armor_stand,name=Prison,scores={Event=1,EventPhase=3,Difficulty=2}] ~~~ execute @a ~~~ summon myth:prison_guard_3 ^3 ^1 ^3
execute @s[type=armor_stand,name=Prison,scores={Event=1,EventPhase=3,Difficulty=2}] ~~~ execute @a ~~~ summon myth:prison_guard_4 ^-3 ^1 ^3
execute @s[type=armor_stand,name=Prison,scores={Event=1,EventPhase=3,Difficulty=2}] ~~~ execute @a ~~~ summon myth:prison_guard_4 ^3 ^1 ^-3
execute @s[type=armor_stand,name=Prison,scores={Event=1,EventPhase=3,Difficulty=2}] ~~~ tellraw @a {"rawtext":[{"text":"§4Oh, no! You didn't make it in time..."}]} 

execute @s[type=armor_stand,name=Prison,scores={Event=1,EventPhase=3,Difficulty=3}] ~~~ execute @a ~~~ summon myth:prison_guard_5 ^3 ^1 ^1
execute @s[type=armor_stand,name=Prison,scores={Event=1,EventPhase=3,Difficulty=3}] ~~~ execute @a ~~~ summon myth:prison_guard_5 ^3 ^1 ^3
execute @s[type=armor_stand,name=Prison,scores={Event=1,EventPhase=3,Difficulty=3}] ~~~ execute @a ~~~ summon myth:prison_guard_6 ^-3 ^1 ^3
execute @s[type=armor_stand,name=Prison,scores={Event=1,EventPhase=3,Difficulty=3}] ~~~ execute @a ~~~ summon myth:prison_guard_6 ^3 ^1 ^-3
execute @s[type=armor_stand,name=Prison,scores={Event=1,EventPhase=3,Difficulty=3}] ~~~ tellraw @a {"rawtext":[{"text":"§4Oh, no! You didn't make it in time..."}]} 
execute @s[type=armor_stand,name=Prison,scores={Event=1,EventPhase=3}] ~~~ function EventReset





execute @s[type=armor_stand,name=Prison,scores={Event=2}] ~~~ scoreboard players add @e[type=armor_stand,name=Prison] TimerEvent1 1
execute @s[type=armor_stand,name=Prison,scores={Event=2,EventPhase=0}] ~~~ tellraw @a {"rawtext":[{"text":"§bHead to the Cafetaria!"}]}
execute @s[type=armor_stand,name=Prison,scores={Event=2}] ~~~ scoreboard players add @e[type=armor_stand,name=Prison] TimerAlarm 1
execute @s[type=armor_stand,name=Prison,scores={Event=2,TimerAlarm=20}] ~~~ playsound prison.myth.alarm.alarm @a
execute @s[type=armor_stand,name=Prison,scores={Event=2,TimerAlarm=40}] ~~~ playsound prison.myth.alarm.alarm @a
execute @s[type=armor_stand,name=Prison,scores={Event=2,TimerAlarm=60}] ~~~ playsound prison.myth.alarm.alarm @a
execute @s[type=armor_stand,name=Prison,scores={Event=2,EventPhase=0}] ~~~ summon myth:event1 -107 77 -27
execute @s[type=armor_stand,name=Prison,scores={Event=2,EventPhase=0}] ~~~ summon myth:event2 54 80 -21
execute @s[type=armor_stand,name=Prison,scores={Event=2,EventPhase=0}] ~~~ summon myth:event3 82 80  -60
execute @s[type=armor_stand,name=Prison,scores={Event=2,EventPhase=0}] ~~~ scoreboard players set @e[type=armor_stand,name=Prison] EventPhase 1
execute @s[type=armor_stand,name=Prison,scores={Event=2,EventPhase=1}] ~~~ execute @e[type=myth:event1] ~ ~ ~ execute @a[dx=42,dy=10,dz=27] ~ ~ ~ scoreboard players set @e[type=armor_stand,name=Prison] EventPhase 2
execute @s[type=armor_stand,name=Prison,scores={Event=2,EventPhase=1}] ~~~ execute @e[type=myth:event2] ~ ~ ~ execute @a[dx=42,dy=10,dz=27] ~ ~ ~ scoreboard players set @e[type=armor_stand,name=Prison] EventPhase 2
execute @s[type=armor_stand,name=Prison,scores={Event=2,EventPhase=1}] ~~~ execute @e[type=myth:event3] ~ ~ ~ execute @a[dx=42,dy=10,dz=27] ~ ~ ~ scoreboard players set @e[type=armor_stand,name=Prison] EventPhase 2
execute @s[type=armor_stand,name=Prison,scores={Event=2,EventPhase=2}] ~~~ tellraw @a {"rawtext":[{"text":"Good job! You made it..."}]} 
execute @s[type=armor_stand,name=Prison,scores={Event=2,EventPhase=2}] ~~~ tellraw @a {"rawtext":[{"text":"§2+35 coins"}]} 
execute @s[type=armor_stand,name=Prison,scores={Event=2,EventPhase=2}] ~~~ playsound prison.myth.generator.generator_upgrade_1 @a
execute @s[type=armor_stand,name=Prison,scores={Event=2,EventPhase=2}] ~~~ scoreboard players add @a Coins 35
execute @s[type=armor_stand,name=Prison,scores={Event=2,EventPhase=2}] ~~~ function EventReset

execute @s[type=armor_stand,name=Prison,scores={Event=2,EventPhase=1,TimerEvent1=1100}] ~~~ scoreboard players set @e[type=armor_stand,name=Prison] EventPhase 3
execute @s[type=armor_stand,name=Prison,scores={Event=2,EventPhase=1,TimerEvent1=900}] ~~~ tellraw @a {"rawtext":[{"text":"§bHurry up!"}]} 
execute @s[type=armor_stand,name=Prison,scores={Event=2,EventPhase=1,TimerEvent1=920}] ~~~ title @a actionbar 9
execute @s[type=armor_stand,name=Prison,scores={Event=2,EventPhase=1,TimerEvent1=940}] ~~~ title @a actionbar 8
execute @s[type=armor_stand,name=Prison,scores={Event=2,EventPhase=1,TimerEvent1=960}] ~~~ title @a actionbar 7
execute @s[type=armor_stand,name=Prison,scores={Event=2,EventPhase=1,TimerEvent1=980}] ~~~ title @a actionbar 6
execute @s[type=armor_stand,name=Prison,scores={Event=2,EventPhase=1,TimerEvent1=1000}] ~~~ title @a actionbar 5
execute @s[type=armor_stand,name=Prison,scores={Event=2,EventPhase=1,TimerEvent1=1020}] ~~~ title @a actionbar 4
execute @s[type=armor_stand,name=Prison,scores={Event=2,EventPhase=1,TimerEvent1=1040}] ~~~ title @a actionbar 3
execute @s[type=armor_stand,name=Prison,scores={Event=2,EventPhase=1,TimerEvent1=1060}] ~~~ title @a actionbar 2
execute @s[type=armor_stand,name=Prison,scores={Event=2,EventPhase=1,TimerEvent1=1080}] ~~~ title @a actionbar 1

execute @s[type=armor_stand,name=Prison,scores={Event=2,EventPhase=3}] ~~~playsound prison.myth.alarm.alarm @a
execute @s[type=armor_stand,name=Prison,scores={Event=2,EventPhase=3,Difficulty=1}] ~~~ execute @a ~~~ summon myth:prison_guard_1 ^3 ^1 ^1
execute @s[type=armor_stand,name=Prison,scores={Event=2,EventPhase=3,Difficulty=1}] ~~~ execute @a ~~~ summon myth:prison_guard_1 ^3 ^1 ^3
execute @s[type=armor_stand,name=Prison,scores={Event=2,EventPhase=3,Difficulty=1}] ~~~ execute @a ~~~ summon myth:prison_guard_1 ^-3 ^1 ^3
execute @s[type=armor_stand,name=Prison,scores={Event=2,EventPhase=3,Difficulty=1}] ~~~ execute @a ~~~ summon myth:prison_guard_1 ^3 ^1 ^-3
execute @s[type=armor_stand,name=Prison,scores={Event=2,EventPhase=3,Difficulty=1}] ~~~ tellraw @a {"rawtext":[{"text":"§4Oh, no! You didn't make it in time..."}]} 

execute @s[type=armor_stand,name=Prison,scores={Event=2,EventPhase=3,Difficulty=2}] ~~~ execute @a ~~~ summon myth:prison_guard_3 ^3 ^1 ^1
execute @s[type=armor_stand,name=Prison,scores={Event=2,EventPhase=3,Difficulty=2}] ~~~ execute @a ~~~ summon myth:prison_guard_3 ^3 ^1 ^3
execute @s[type=armor_stand,name=Prison,scores={Event=2,EventPhase=3,Difficulty=2}] ~~~ execute @a ~~~ summon myth:prison_guard_4 ^-3 ^1 ^3
execute @s[type=armor_stand,name=Prison,scores={Event=2,EventPhase=3,Difficulty=2}] ~~~ execute @a ~~~ summon myth:prison_guard_4 ^3 ^1 ^-3
execute @s[type=armor_stand,name=Prison,scores={Event=2,EventPhase=3,Difficulty=2}] ~~~ tellraw @a {"rawtext":[{"text":"§4Oh, no! You didn't make it in time..."}]} 

execute @s[type=armor_stand,name=Prison,scores={Event=2,EventPhase=3,Difficulty=3}] ~~~ execute @a ~~~ summon myth:prison_guard_5 ^3 ^1 ^1
execute @s[type=armor_stand,name=Prison,scores={Event=2,EventPhase=3,Difficulty=3}] ~~~ execute @a ~~~ summon myth:prison_guard_5 ^3 ^1 ^3
execute @s[type=armor_stand,name=Prison,scores={Event=2,EventPhase=3,Difficulty=3}] ~~~ execute @a ~~~ summon myth:prison_guard_6 ^-3 ^1 ^3
execute @s[type=armor_stand,name=Prison,scores={Event=2,EventPhase=3,Difficulty=3}] ~~~ execute @a ~~~ summon myth:prison_guard_6 ^3 ^1 ^-3
execute @s[type=armor_stand,name=Prison,scores={Event=2,EventPhase=3,Difficulty=3}] ~~~ tellraw @a {"rawtext":[{"text":"§4Oh, no! You didn't make it in time..."}]} 
execute @s[type=armor_stand,name=Prison,scores={Event=2,EventPhase=3}] ~~~ function EventReset






execute @s[type=armor_stand,name=Prison,scores={Event=3}] ~~~ scoreboard players add @e[type=armor_stand,name=Prison] TimerEvent1 1
execute @s[type=armor_stand,name=Prison,scores={Event=3,EventPhase=0}] ~~~ tellraw @a {"rawtext":[{"text":"§bHead to the Medical Center!"}]}
execute @s[type=armor_stand,name=Prison,scores={Event=3}] ~~~ scoreboard players add @e[type=armor_stand,name=Prison] TimerAlarm 1
execute @s[type=armor_stand,name=Prison,scores={Event=3,TimerAlarm=20}] ~~~ playsound prison.myth.alarm.alarm @a
execute @s[type=armor_stand,name=Prison,scores={Event=3,TimerAlarm=40}] ~~~ playsound prison.myth.alarm.alarm @a
execute @s[type=armor_stand,name=Prison,scores={Event=3,TimerAlarm=60}] ~~~ playsound prison.myth.alarm.alarm @a
execute @s[type=armor_stand,name=Prison,scores={Event=3,EventPhase=0}] ~~~ summon myth:event1 -52 79 -1
execute @s[type=armor_stand,name=Prison,scores={Event=3,EventPhase=0}] ~~~ scoreboard players set @e[type=armor_stand,name=Prison] EventPhase 1
execute @s[type=armor_stand,name=Prison,scores={Event=3,EventPhase=1}] ~~~ execute @e[type=myth:event1] ~ ~ ~ execute @a[dx=13,dy=10,dz=43] ~ ~ ~ scoreboard players set @e[type=armor_stand,name=Prison] EventPhase 2
execute @s[type=armor_stand,name=Prison,scores={Event=3,EventPhase=2}] ~~~ tellraw @a {"rawtext":[{"text":"Good job! You made it..."}]} 
execute @s[type=armor_stand,name=Prison,scores={Event=3,EventPhase=2}] ~~~ tellraw @a {"rawtext":[{"text":"§2+35 coins"}]} 
execute @s[type=armor_stand,name=Prison,scores={Event=3,EventPhase=2}] ~~~ playsound prison.myth.generator.generator_upgrade_1 @a
execute @s[type=armor_stand,name=Prison,scores={Event=3,EventPhase=2}] ~~~ scoreboard players add @a Coins 35
execute @s[type=armor_stand,name=Prison,scores={Event=3,EventPhase=2}] ~~~ function EventReset

execute @s[type=armor_stand,name=Prison,scores={Event=3,EventPhase=1,TimerEvent1=1100}] ~~~ scoreboard players set @e[type=armor_stand,name=Prison] EventPhase 3
execute @s[type=armor_stand,name=Prison,scores={Event=3,EventPhase=1,TimerEvent1=900}] ~~~ tellraw @a {"rawtext":[{"text":"§bHurry up!"}]} 
execute @s[type=armor_stand,name=Prison,scores={Event=3,EventPhase=1,TimerEvent1=920}] ~~~ title @a actionbar 9
execute @s[type=armor_stand,name=Prison,scores={Event=3,EventPhase=1,TimerEvent1=940}] ~~~ title @a actionbar 8
execute @s[type=armor_stand,name=Prison,scores={Event=3,EventPhase=1,TimerEvent1=960}] ~~~ title @a actionbar 7
execute @s[type=armor_stand,name=Prison,scores={Event=3,EventPhase=1,TimerEvent1=980}] ~~~ title @a actionbar 6
execute @s[type=armor_stand,name=Prison,scores={Event=3,EventPhase=1,TimerEvent1=1000}] ~~~ title @a actionbar 5
execute @s[type=armor_stand,name=Prison,scores={Event=3,EventPhase=1,TimerEvent1=1020}] ~~~ title @a actionbar 4
execute @s[type=armor_stand,name=Prison,scores={Event=3,EventPhase=1,TimerEvent1=1040}] ~~~ title @a actionbar 3
execute @s[type=armor_stand,name=Prison,scores={Event=3,EventPhase=1,TimerEvent1=1060}] ~~~ title @a actionbar 2
execute @s[type=armor_stand,name=Prison,scores={Event=3,EventPhase=1,TimerEvent1=1080}] ~~~ title @a actionbar 1

execute @s[type=armor_stand,name=Prison,scores={Event=3,EventPhase=3}] ~~~playsound prison.myth.alarm.alarm @a
execute @s[type=armor_stand,name=Prison,scores={Event=3,EventPhase=3,Difficulty=1}] ~~~ execute @a ~~~ summon myth:prison_guard_1 ^3 ^1 ^1
execute @s[type=armor_stand,name=Prison,scores={Event=3,EventPhase=3,Difficulty=1}] ~~~ execute @a ~~~ summon myth:prison_guard_1 ^3 ^1 ^3
execute @s[type=armor_stand,name=Prison,scores={Event=3,EventPhase=3,Difficulty=1}] ~~~ execute @a ~~~ summon myth:prison_guard_1 ^-3 ^1 ^3
execute @s[type=armor_stand,name=Prison,scores={Event=3,EventPhase=3,Difficulty=1}] ~~~ execute @a ~~~ summon myth:prison_guard_1 ^3 ^1 ^-3
execute @s[type=armor_stand,name=Prison,scores={Event=3,EventPhase=3,Difficulty=1}] ~~~ tellraw @a {"rawtext":[{"text":"§4Oh, no! You didn't make it in time..."}]} 

execute @s[type=armor_stand,name=Prison,scores={Event=3,EventPhase=3,Difficulty=2}] ~~~ execute @a ~~~ summon myth:prison_guard_3 ^3 ^1 ^1
execute @s[type=armor_stand,name=Prison,scores={Event=3,EventPhase=3,Difficulty=2}] ~~~ execute @a ~~~ summon myth:prison_guard_3 ^3 ^1 ^3
execute @s[type=armor_stand,name=Prison,scores={Event=3,EventPhase=3,Difficulty=2}] ~~~ execute @a ~~~ summon myth:prison_guard_4 ^-3 ^1 ^3
execute @s[type=armor_stand,name=Prison,scores={Event=3,EventPhase=3,Difficulty=2}] ~~~ execute @a ~~~ summon myth:prison_guard_4 ^3 ^1 ^-3
execute @s[type=armor_stand,name=Prison,scores={Event=3,EventPhase=3,Difficulty=2}] ~~~ tellraw @a {"rawtext":[{"text":"§4Oh, no! You didn't make it in time..."}]} 

execute @s[type=armor_stand,name=Prison,scores={Event=3,EventPhase=3,Difficulty=3}] ~~~ execute @a ~~~ summon myth:prison_guard_5 ^3 ^1 ^1
execute @s[type=armor_stand,name=Prison,scores={Event=3,EventPhase=3,Difficulty=3}] ~~~ execute @a ~~~ summon myth:prison_guard_5 ^3 ^1 ^3
execute @s[type=armor_stand,name=Prison,scores={Event=3,EventPhase=3,Difficulty=3}] ~~~ execute @a ~~~ summon myth:prison_guard_6 ^-3 ^1 ^3
execute @s[type=armor_stand,name=Prison,scores={Event=3,EventPhase=3,Difficulty=3}] ~~~ execute @a ~~~ summon myth:prison_guard_6 ^3 ^1 ^-3
execute @s[type=armor_stand,name=Prison,scores={Event=3,EventPhase=3,Difficulty=3}] ~~~ tellraw @a {"rawtext":[{"text":"§4Oh, no! You didn't make it in time..."}]} 
execute @s[type=armor_stand,name=Prison,scores={Event=3,EventPhase=3}] ~~~ function EventReset


execute @s[type=armor_stand,name=Prison,scores={Event=4}] ~~~ scoreboard players add @e[type=armor_stand,name=Prison] TimerEvent1 1
execute @s[type=armor_stand,name=Prison,scores={Event=4,EventPhase=0}] ~~~ tellraw @a {"rawtext":[{"text":"§bHead to the Animal Farm!"}]}
execute @s[type=armor_stand,name=Prison,scores={Event=4}] ~~~ scoreboard players add @e[type=armor_stand,name=Prison] TimerAlarm 1
execute @s[type=armor_stand,name=Prison,scores={Event=4,TimerAlarm=20}] ~~~ playsound prison.myth.alarm.alarm @a
execute @s[type=armor_stand,name=Prison,scores={Event=4,TimerAlarm=40}] ~~~ playsound prison.myth.alarm.alarm @a
execute @s[type=armor_stand,name=Prison,scores={Event=4,TimerAlarm=60}] ~~~ playsound prison.myth.alarm.alarm @a
execute @s[type=armor_stand,name=Prison,scores={Event=4,EventPhase=0}] ~~~ summon myth:event1 -126 66 -2
execute @s[type=armor_stand,name=Prison,scores={Event=4,EventPhase=0}] ~~~ summon myth:event2 -60 65 43
execute @s[type=armor_stand,name=Prison,scores={Event=4,EventPhase=0}] ~~~ scoreboard players set @e[type=armor_stand,name=Prison] EventPhase 1
execute @s[type=armor_stand,name=Prison,scores={Event=4,EventPhase=1}] ~~~ execute @e[type=myth:event1] ~ ~ ~ execute @a[dx=65,dy=20,dz=95] ~ ~ ~ scoreboard players set @e[type=armor_stand,name=Prison] EventPhase 2
execute @s[type=armor_stand,name=Prison,scores={Event=4,EventPhase=1}] ~~~ execute @e[type=myth:event2] ~ ~ ~ execute @a[dx=31,dy=20,dz=50] ~ ~ ~ scoreboard players set @e[type=armor_stand,name=Prison] EventPhase 2
execute @s[type=armor_stand,name=Prison,scores={Event=4,EventPhase=2}] ~~~ tellraw @a {"rawtext":[{"text":"Good job! You made it..."}]} 
execute @s[type=armor_stand,name=Prison,scores={Event=4,EventPhase=2}] ~~~ tellraw @a {"rawtext":[{"text":"§2+35 coins"}]} 
execute @s[type=armor_stand,name=Prison,scores={Event=4,EventPhase=2}] ~~~ playsound prison.myth.generator.generator_upgrade_1 @a
execute @s[type=armor_stand,name=Prison,scores={Event=4,EventPhase=2}] ~~~ scoreboard players add @a Coins 35
execute @s[type=armor_stand,name=Prison,scores={Event=4,EventPhase=2}] ~~~ function EventReset

execute @s[type=armor_stand,name=Prison,scores={Event=4,EventPhase=1,TimerEvent1=1100}] ~~~ scoreboard players set @e[type=armor_stand,name=Prison] EventPhase 3
execute @s[type=armor_stand,name=Prison,scores={Event=4,EventPhase=1,TimerEvent1=900}] ~~~ tellraw @a {"rawtext":[{"text":"§bHurry up!"}]} 
execute @s[type=armor_stand,name=Prison,scores={Event=4,EventPhase=1,TimerEvent1=920}] ~~~ title @a actionbar 9
execute @s[type=armor_stand,name=Prison,scores={Event=4,EventPhase=1,TimerEvent1=940}] ~~~ title @a actionbar 8
execute @s[type=armor_stand,name=Prison,scores={Event=4,EventPhase=1,TimerEvent1=960}] ~~~ title @a actionbar 7
execute @s[type=armor_stand,name=Prison,scores={Event=4,EventPhase=1,TimerEvent1=980}] ~~~ title @a actionbar 6
execute @s[type=armor_stand,name=Prison,scores={Event=4,EventPhase=1,TimerEvent1=1000}] ~~~ title @a actionbar 5
execute @s[type=armor_stand,name=Prison,scores={Event=4,EventPhase=1,TimerEvent1=1020}] ~~~ title @a actionbar 4
execute @s[type=armor_stand,name=Prison,scores={Event=4,EventPhase=1,TimerEvent1=1040}] ~~~ title @a actionbar 3
execute @s[type=armor_stand,name=Prison,scores={Event=4,EventPhase=1,TimerEvent1=1060}] ~~~ title @a actionbar 2
execute @s[type=armor_stand,name=Prison,scores={Event=4,EventPhase=1,TimerEvent1=1080}] ~~~ title @a actionbar 1

execute @s[type=armor_stand,name=Prison,scores={Event=4,EventPhase=3}] ~~~playsound prison.myth.alarm.alarm @a
execute @s[type=armor_stand,name=Prison,scores={Event=4,EventPhase=3,Difficulty=1}] ~~~ execute @a ~~~ summon myth:prison_guard_1 ^3 ^1 ^1
execute @s[type=armor_stand,name=Prison,scores={Event=4,EventPhase=3,Difficulty=1}] ~~~ execute @a ~~~ summon myth:prison_guard_1 ^3 ^1 ^3
execute @s[type=armor_stand,name=Prison,scores={Event=4,EventPhase=3,Difficulty=1}] ~~~ execute @a ~~~ summon myth:prison_guard_1 ^-3 ^1 ^3
execute @s[type=armor_stand,name=Prison,scores={Event=4,EventPhase=3,Difficulty=1}] ~~~ execute @a ~~~ summon myth:prison_guard_1 ^3 ^1 ^-3
execute @s[type=armor_stand,name=Prison,scores={Event=4,EventPhase=3,Difficulty=1}] ~~~ tellraw @a {"rawtext":[{"text":"§4Oh, no! You didn't make it in time..."}]} 

execute @s[type=armor_stand,name=Prison,scores={Event=4,EventPhase=3,Difficulty=2}] ~~~ execute @a ~~~ summon myth:prison_guard_3 ^3 ^1 ^1
execute @s[type=armor_stand,name=Prison,scores={Event=4,EventPhase=3,Difficulty=2}] ~~~ execute @a ~~~ summon myth:prison_guard_3 ^3 ^1 ^3
execute @s[type=armor_stand,name=Prison,scores={Event=4,EventPhase=3,Difficulty=2}] ~~~ execute @a ~~~ summon myth:prison_guard_4 ^-3 ^1 ^3
execute @s[type=armor_stand,name=Prison,scores={Event=4,EventPhase=3,Difficulty=2}] ~~~ execute @a ~~~ summon myth:prison_guard_4 ^3 ^1 ^-3
execute @s[type=armor_stand,name=Prison,scores={Event=4,EventPhase=3,Difficulty=2}] ~~~ tellraw @a {"rawtext":[{"text":"§4Oh, no! You didn't make it in time..."}]} 

execute @s[type=armor_stand,name=Prison,scores={Event=4,EventPhase=3,Difficulty=3}] ~~~ execute @a ~~~ summon myth:prison_guard_5 ^3 ^1 ^1
execute @s[type=armor_stand,name=Prison,scores={Event=4,EventPhase=3,Difficulty=3}] ~~~ execute @a ~~~ summon myth:prison_guard_5 ^3 ^1 ^3
execute @s[type=armor_stand,name=Prison,scores={Event=4,EventPhase=3,Difficulty=3}] ~~~ execute @a ~~~ summon myth:prison_guard_6 ^-3 ^1 ^3
execute @s[type=armor_stand,name=Prison,scores={Event=4,EventPhase=3,Difficulty=3}] ~~~ execute @a ~~~ summon myth:prison_guard_6 ^3 ^1 ^-3
execute @s[type=armor_stand,name=Prison,scores={Event=4,EventPhase=3,Difficulty=3}] ~~~ tellraw @a {"rawtext":[{"text":"§4Oh, no! You didn't make it in time..."}]} 
execute @s[type=armor_stand,name=Prison,scores={Event=4,EventPhase=3}] ~~~ function EventReset



execute @s[type=armor_stand,name=Prison,scores={Event=5,EventPhase=0}] ~~~ tellraw @a {"rawtext":[{"text":"§bThe mines will reset in 10 seconds! "}]} 
execute @s[type=armor_stand,name=Prison,scores={Event=1}] ~~~ scoreboard players add @e[type=armor_stand,name=Prison] TimerAlarm 1
execute @s[type=armor_stand,name=Prison,scores={Event=5,TimerAlarm=20}] ~~~ playsound prison.myth.alarm.alarm @a
execute @s[type=armor_stand,name=Prison,scores={Event=5,TimerAlarm=40}] ~~~ playsound prison.myth.alarm.alarm @a
execute @s[type=armor_stand,name=Prison,scores={Event=5,TimerAlarm=60}] ~~~ playsound prison.myth.alarm.alarm @a
execute @s[type=armor_stand,name=Prison,scores={Event=5,EventPhase=0}] ~~~ scoreboard players set @e[type=armor_stand,name=Prison] EventPhase 1
execute @s[type=armor_stand,name=Prison,scores={Event=5,EventPhase=1,TimerEvent1=0}] ~~~ title @a actionbar 10
execute @s[type=armor_stand,name=Prison,scores={Event=5,EventPhase=1}] ~~~ scoreboard players add @e[type=armor_stand,name=Prison] TimerEvent1 1
execute @s[type=armor_stand,name=Prison,scores={Event=5,EventPhase=1,TimerEvent1=20}] ~~~ title @a actionbar 9
execute @s[type=armor_stand,name=Prison,scores={Event=5,EventPhase=1,TimerEvent1=40}] ~~~ title @a actionbar 8
execute @s[type=armor_stand,name=Prison,scores={Event=5,EventPhase=1,TimerEvent1=60}] ~~~ title @a actionbar 7
execute @s[type=armor_stand,name=Prison,scores={Event=5,EventPhase=1,TimerEvent1=80}] ~~~ title @a actionbar 6
execute @s[type=armor_stand,name=Prison,scores={Event=5,EventPhase=1,TimerEvent1=100}] ~~~ title @a actionbar 5
execute @s[type=armor_stand,name=Prison,scores={Event=5,EventPhase=1,TimerEvent1=120}] ~~~ title @a actionbar 4
execute @s[type=armor_stand,name=Prison,scores={Event=5,EventPhase=1,TimerEvent1=140}] ~~~ title @a actionbar 3
execute @s[type=armor_stand,name=Prison,scores={Event=5,EventPhase=1,TimerEvent1=160}] ~~~ title @a actionbar 2
execute @s[type=armor_stand,name=Prison,scores={Event=5,EventPhase=1,TimerEvent1=180}] ~~~ title @a actionbar 1
execute @s[type=armor_stand,name=Prison,scores={Event=5,EventPhase=1,TimerEvent1=200}] ~~~ scoreboard players set @e[type=armor_stand,name=Prison] EventPhase 2
execute @s[type=armor_stand,name=Prison,scores={Event=5,EventPhase=2}] ~~~ scoreboard players set @e[type=armor_stand,name=Prison] StartMine1 1
execute @s[type=armor_stand,name=Prison,scores={Event=5,EventPhase=2}] ~~~ scoreboard players set @e[type=armor_stand,name=Prison] StartMine2 1
execute @s[type=armor_stand,name=Prison,scores={Event=5,EventPhase=2}] ~~~ scoreboard players set @e[type=armor_stand,name=Prison] StartMine3 1
execute @s[type=armor_stand,name=Prison,scores={Event=5,EventPhase=2}] ~~~ tellraw @a {"rawtext":[{"text":"§bThe mines were succesfully reset! "}]} 
execute @s[type=armor_stand,name=Prison,scores={Event=5,EventPhase=2}] ~~~  function EventReset




execute @s[type=armor_stand,name=Prison,scores={Event=6}] ~~~ scoreboard players add @e[type=armor_stand,name=Prison] TimerEvent1 1
execute @s[type=armor_stand,name=Prison,scores={Event=6,EventPhase=0}] ~~~ tellraw @a {"rawtext":[{"text":"§bAn inmate at the animal farm needs some Raw Porkchops. Bring 10 of them!"}]} 
execute @s[type=armor_stand,name=Prison,scores={Event=6}] ~~~ scoreboard players add @e[type=armor_stand,name=Prison] TimerAlarm 1
execute @s[type=armor_stand,name=Prison,scores={Event=6,TimerAlarm=20}] ~~~ playsound prison.myth.alarm.alarm @a
execute @s[type=armor_stand,name=Prison,scores={Event=6,TimerAlarm=40}] ~~~ playsound prison.myth.alarm.alarm @a
execute @s[type=armor_stand,name=Prison,scores={Event=6,TimerAlarm=60}] ~~~ playsound prison.myth.alarm.alarm @a
execute @s[type=armor_stand,name=Prison,scores={Event=6,EventPhase=0}] ~~~ scoreboard players set @e[type=armor_stand,name=Prison] EventPhase 1
execute @s[type=armor_stand,name=Prison,scores={Event=6,EventPhase=1}] ~~~ tp @e[x=49,y=61,z=-25,r=1] -45 69 57
execute @s[type=armor_stand,name=Prison,scores={Event=6,EventPhase=1}] ~~~ scoreboard players set @e[type=armor_stand,name=Prison] EventPhase 2
execute @s[type=armor_stand,name=Prison,scores={Event=6,EventPhase=3}] ~~~ setblock 47 57 -26 air
execute @s[type=armor_stand,name=Prison,scores={Event=6,EventPhase=3}] ~~~ scoreboard players add @a Coins 20
execute @s[type=armor_stand,name=Prison,scores={Event=6,EventPhase=3}] ~~~ scoreboard players add @a Coins 35
execute @s[type=armor_stand,name=Prison,scores={Event=6,EventPhase=3}] ~~~ tp @e[x=-45,y=69,z=57,r=1] 49 61 -25
execute @s[type=armor_stand,name=Prison,scores={Event=6,EventPhase=3}] ~~~ tellraw @a {"rawtext":[{"text":"§6+55 coins"}]} 

execute @s[type=armor_stand,name=Prison,scores={Event=6,EventPhase=4}] ~~~ tellraw @a {"rawtext":[{"text":"§4You didn't have 10 raw porkchop, liar!"}]} 
execute @s[type=armor_stand,name=Prison,scores={Event=6,EventPhase=4,Coins=10..}] ~~~ scoreboard players remove @a Coins 10
execute @s[type=armor_stand,name=Prison,scores={Event=6,EventPhase=4}] ~~~ tellraw @a {"rawtext":[{"text":"§4-10 coins"}]}
execute @s[type=armor_stand,name=Prison,scores={Event=6,EventPhase=4}] ~~~ setblock 47 57 -26 air
execute @s[type=armor_stand,name=Prison,scores={Event=6,EventPhase=4}] ~~~ tp @e[x=-45,y=69,z=57,r=1] 49 61 -25
execute @s[type=armor_stand,name=Prison,scores={Event=6,EventPhase=4}] ~~~ function EventReset
execute @s[type=armor_stand,name=Prison,scores={Event=6,EventPhase=3}] ~~~ function EventReset

execute @s[type=armor_stand,name=Prison,scores={Event=6,EventPhase=2,TimerEvent1=1100}] ~~~ scoreboard players set @e[type=armor_stand,name=Prison] EventPhase 5
execute @s[type=armor_stand,name=Prison,scores={Event=6,EventPhase=5}] ~~~playsound prison.myth.alarm.alarm @a
execute @s[type=armor_stand,name=Prison,scores={Event=6,EventPhase=5,Difficulty=1}] ~~~ execute @a ~~~ summon myth:prison_guard_1 ^3 ^1 ^1
execute @s[type=armor_stand,name=Prison,scores={Event=6,EventPhase=5,Difficulty=1}] ~~~ execute @a ~~~ summon myth:prison_guard_1 ^3 ^1 ^3
execute @s[type=armor_stand,name=Prison,scores={Event=6,EventPhase=5,Difficulty=1}] ~~~ execute @a ~~~ summon myth:prison_guard_1 ^-3 ^1 ^3
execute @s[type=armor_stand,name=Prison,scores={Event=6,EventPhase=5,Difficulty=1}] ~~~ execute @a ~~~ summon myth:prison_guard_1 ^3 ^1 ^-3
execute @s[type=armor_stand,name=Prison,scores={Event=6,EventPhase=5,Difficulty=1}] ~~~ tellraw @a {"rawtext":[{"text":"§4Oh, no! You didn't make it in time..."}]} 

execute @s[type=armor_stand,name=Prison,scores={Event=6,EventPhase=5,Difficulty=2}] ~~~ execute @a ~~~ summon myth:prison_guard_3 ^3 ^1 ^1
execute @s[type=armor_stand,name=Prison,scores={Event=6,EventPhase=5,Difficulty=2}] ~~~ execute @a ~~~ summon myth:prison_guard_3 ^3 ^1 ^3
execute @s[type=armor_stand,name=Prison,scores={Event=6,EventPhase=5,Difficulty=2}] ~~~ execute @a ~~~ summon myth:prison_guard_4 ^-3 ^1 ^3
execute @s[type=armor_stand,name=Prison,scores={Event=6,EventPhase=5,Difficulty=2}] ~~~ execute @a ~~~ summon myth:prison_guard_4 ^3 ^1 ^-3
execute @s[type=armor_stand,name=Prison,scores={Event=6,EventPhase=5,Difficulty=2}] ~~~ tellraw @a {"rawtext":[{"text":"§4Oh, no! You didn't make it in time..."}]} 

execute @s[type=armor_stand,name=Prison,scores={Event=6,EventPhase=5,Difficulty=3}] ~~~ execute @a ~~~ summon myth:prison_guard_5 ^3 ^1 ^1
execute @s[type=armor_stand,name=Prison,scores={Event=6,EventPhase=5,Difficulty=3}] ~~~ execute @a ~~~ summon myth:prison_guard_5 ^3 ^1 ^3
execute @s[type=armor_stand,name=Prison,scores={Event=6,EventPhase=5,Difficulty=3}] ~~~ execute @a ~~~ summon myth:prison_guard_6 ^-3 ^1 ^3
execute @s[type=armor_stand,name=Prison,scores={Event=6,EventPhase=5,Difficulty=3}] ~~~ execute @a ~~~ summon myth:prison_guard_6 ^3 ^1 ^-3
execute @s[type=armor_stand,name=Prison,scores={Event=6,EventPhase=5,Difficulty=3}] ~~~ tellraw @a {"rawtext":[{"text":"§4Oh, no! You didn't make it in time..."}]} 
execute @s[type=armor_stand,name=Prison,scores={Event=6,EventPhase=5}] ~~~ function EventReset










execute @s[type=armor_stand,name=Prison,scores={Event=7}] ~~~ scoreboard players add @e[type=armor_stand,name=Prison] TimerEvent1 1
execute @s[type=armor_stand,name=Prison,scores={Event=7,EventPhase=0}] ~~~ tellraw @a {"rawtext":[{"text":"§bAn inmate at the animal farm needs some Raw Beef. Bring 10 of them!"}]} 
execute @s[type=armor_stand,name=Prison,scores={Event=7}] ~~~ scoreboard players add @e[type=armor_stand,name=Prison] TimerAlarm 1
execute @s[type=armor_stand,name=Prison,scores={Event=7,TimerAlarm=20}] ~~~ playsound prison.myth.alarm.alarm @a
execute @s[type=armor_stand,name=Prison,scores={Event=7,TimerAlarm=40}] ~~~ playsound prison.myth.alarm.alarm @a
execute @s[type=armor_stand,name=Prison,scores={Event=7,TimerAlarm=60}] ~~~ playsound prison.myth.alarm.alarm @a
execute @s[type=armor_stand,name=Prison,scores={Event=7,EventPhase=0}] ~~~ scoreboard players set @e[type=armor_stand,name=Prison] EventPhase 1
execute @s[type=armor_stand,name=Prison,scores={Event=7,EventPhase=1}] ~~~ tp @e[x=53,y=61,z=-25,r=1] -45 69 57
execute @s[type=armor_stand,name=Prison,scores={Event=7,EventPhase=1}] ~~~ scoreboard players set @e[type=armor_stand,name=Prison] EventPhase 2
execute @s[type=armor_stand,name=Prison,scores={Event=7,EventPhase=3}] ~~~ setblock 49 57 -26 air
execute @s[type=armor_stand,name=Prison,scores={Event=7,EventPhase=3}] ~~~ scoreboard players add @a Coins 20
execute @s[type=armor_stand,name=Prison,scores={Event=7,EventPhase=3}] ~~~ scoreboard players add @a Coins 35
execute @s[type=armor_stand,name=Prison,scores={Event=7,EventPhase=3}] ~~~ tp @e[x=-45,y=69,z=57,r=1] 53 61 -25
execute @s[type=armor_stand,name=Prison,scores={Event=7,EventPhase=3}] ~~~ tellraw @a {"rawtext":[{"text":"§6+55 coins"}]} 

execute @s[type=armor_stand,name=Prison,scores={Event=7,EventPhase=4}] ~~~ tellraw @a {"rawtext":[{"text":"§4You didn't have 10 raw beef, liar!"}]} 
execute @s[type=armor_stand,name=Prison,scores={Event=7,EventPhase=4,Coins=10..}] ~~~ scoreboard players remove @a Coins 10
execute @s[type=armor_stand,name=Prison,scores={Event=7,EventPhase=4}] ~~~ tellraw @a {"rawtext":[{"text":"§4-10 coins"}]}
execute @s[type=armor_stand,name=Prison,scores={Event=7,EventPhase=4}] ~~~ setblock 49 57 -26 air
execute @s[type=armor_stand,name=Prison,scores={Event=7,EventPhase=4}] ~~~ tp @e[x=-45,y=69,z=57,r=1] 53 61 -25
execute @s[type=armor_stand,name=Prison,scores={Event=7,EventPhase=4}] ~~~ function EventReset
execute @s[type=armor_stand,name=Prison,scores={Event=7,EventPhase=3}] ~~~ function EventReset

execute @s[type=armor_stand,name=Prison,scores={Event=7,EventPhase=2,TimerEvent1=1100}] ~~~ scoreboard players set @e[type=armor_stand,name=Prison] EventPhase 5
execute @s[type=armor_stand,name=Prison,scores={Event=7,EventPhase=5}] ~~~playsound prison.myth.alarm.alarm @a
execute @s[type=armor_stand,name=Prison,scores={Event=7,EventPhase=5,Difficulty=1}] ~~~ execute @a ~~~ summon myth:prison_guard_1 ^3 ^1 ^1
execute @s[type=armor_stand,name=Prison,scores={Event=7,EventPhase=5,Difficulty=1}] ~~~ execute @a ~~~ summon myth:prison_guard_1 ^3 ^1 ^3
execute @s[type=armor_stand,name=Prison,scores={Event=7,EventPhase=5,Difficulty=1}] ~~~ execute @a ~~~ summon myth:prison_guard_1 ^-3 ^1 ^3
execute @s[type=armor_stand,name=Prison,scores={Event=7,EventPhase=5,Difficulty=1}] ~~~ execute @a ~~~ summon myth:prison_guard_1 ^3 ^1 ^-3
execute @s[type=armor_stand,name=Prison,scores={Event=7,EventPhase=5,Difficulty=1}] ~~~ tellraw @a {"rawtext":[{"text":"§4Oh, no! You didn't make it in time..."}]} 

execute @s[type=armor_stand,name=Prison,scores={Event=7,EventPhase=5,Difficulty=2}] ~~~ execute @a ~~~ summon myth:prison_guard_3 ^3 ^1 ^1
execute @s[type=armor_stand,name=Prison,scores={Event=7,EventPhase=5,Difficulty=2}] ~~~ execute @a ~~~ summon myth:prison_guard_3 ^3 ^1 ^3
execute @s[type=armor_stand,name=Prison,scores={Event=7,EventPhase=5,Difficulty=2}] ~~~ execute @a ~~~ summon myth:prison_guard_4 ^-3 ^1 ^3
execute @s[type=armor_stand,name=Prison,scores={Event=7,EventPhase=5,Difficulty=2}] ~~~ execute @a ~~~ summon myth:prison_guard_4 ^3 ^1 ^-3
execute @s[type=armor_stand,name=Prison,scores={Event=7,EventPhase=5,Difficulty=2}] ~~~ tellraw @a {"rawtext":[{"text":"§4Oh, no! You didn't make it in time..."}]} 

execute @s[type=armor_stand,name=Prison,scores={Event=7,EventPhase=5,Difficulty=3}] ~~~ execute @a ~~~ summon myth:prison_guard_5 ^3 ^1 ^1
execute @s[type=armor_stand,name=Prison,scores={Event=7,EventPhase=5,Difficulty=3}] ~~~ execute @a ~~~ summon myth:prison_guard_5 ^3 ^1 ^3
execute @s[type=armor_stand,name=Prison,scores={Event=7,EventPhase=5,Difficulty=3}] ~~~ execute @a ~~~ summon myth:prison_guard_6 ^-3 ^1 ^3
execute @s[type=armor_stand,name=Prison,scores={Event=7,EventPhase=5,Difficulty=3}] ~~~ execute @a ~~~ summon myth:prison_guard_6 ^3 ^1 ^-3
execute @s[type=armor_stand,name=Prison,scores={Event=7,EventPhase=5,Difficulty=3}] ~~~ tellraw @a {"rawtext":[{"text":"§4Oh, no! You didn't make it in time..."}]} 
execute @s[type=armor_stand,name=Prison,scores={Event=7,EventPhase=5}] ~~~ function EventReset










execute @s[type=armor_stand,name=Prison,scores={Event=8}] ~~~ scoreboard players add @e[type=armor_stand,name=Prison] TimerEvent1 1
execute @s[type=armor_stand,name=Prison,scores={Event=8,EventPhase=0}] ~~~ tellraw @a {"rawtext":[{"text":"§bAn inmate at the tree farm needs some Oak Logs. Bring 10 of them!"}]} 
execute @s[type=armor_stand,name=Prison,scores={Event=8}] ~~~ scoreboard players add @e[type=armor_stand,name=Prison] TimerAlarm 1
execute @s[type=armor_stand,name=Prison,scores={Event=8,TimerAlarm=20}] ~~~ playsound prison.myth.alarm.alarm @a
execute @s[type=armor_stand,name=Prison,scores={Event=8,TimerAlarm=40}] ~~~ playsound prison.myth.alarm.alarm @a
execute @s[type=armor_stand,name=Prison,scores={Event=8,TimerAlarm=60}] ~~~ playsound prison.myth.alarm.alarm @a
execute @s[type=armor_stand,name=Prison,scores={Event=8,EventPhase=0}] ~~~ scoreboard players set @e[type=armor_stand,name=Prison] EventPhase 1
execute @s[type=armor_stand,name=Prison,scores={Event=8,EventPhase=1}] ~~~ tp @e[x=53,y=61,z=-29,r=1] 91 69 8
execute @s[type=armor_stand,name=Prison,scores={Event=8,EventPhase=1}] ~~~ scoreboard players set @e[type=armor_stand,name=Prison] EventPhase 2
execute @s[type=armor_stand,name=Prison,scores={Event=8,EventPhase=3}] ~~~ setblock 51 57 -26 air
execute @s[type=armor_stand,name=Prison,scores={Event=8,EventPhase=3}] ~~~ scoreboard players add @a Coins 20
execute @s[type=armor_stand,name=Prison,scores={Event=8,EventPhase=3}] ~~~ scoreboard players add @a Coins 35
execute @s[type=armor_stand,name=Prison,scores={Event=8,EventPhase=3}] ~~~ tp @e[x=91,y=69,z=8,r=1] 53 61 -29
execute @s[type=armor_stand,name=Prison,scores={Event=8,EventPhase=3}] ~~~ tellraw @a {"rawtext":[{"text":"§6+55 coins"}]} 

execute @s[type=armor_stand,name=Prison,scores={Event=8,EventPhase=4}] ~~~ tellraw @a {"rawtext":[{"text":"§4 You didn't have 10 oak logs, liar!"}]} 
execute @s[type=armor_stand,name=Prison,scores={Event=8,EventPhase=4,Coins=10..}] ~~~ scoreboard players remove @a Coins 10
execute @s[type=armor_stand,name=Prison,scores={Event=8,EventPhase=4}] ~~~ tellraw @a {"rawtext":[{"text":"§4 -10 coins"}]}
execute @s[type=armor_stand,name=Prison,scores={Event=8,EventPhase=4}] ~~~ setblock 51 57 -26 air
execute @s[type=armor_stand,name=Prison,scores={Event=8,EventPhase=4}] ~~~ tp @e[x=91,y=69,z=8,r=1] 53 61 -29
execute @s[type=armor_stand,name=Prison,scores={Event=8,EventPhase=4}] ~~~ function EventReset
execute @s[type=armor_stand,name=Prison,scores={Event=8,EventPhase=3}] ~~~ function EventReset

execute @s[type=armor_stand,name=Prison,scores={Event=8,EventPhase=2,TimerEvent1=1100}] ~~~ scoreboard players set @e[type=armor_stand,name=Prison] EventPhase 5
execute @s[type=armor_stand,name=Prison,scores={Event=8,EventPhase=5}] ~~~playsound prison.myth.alarm.alarm @a
execute @s[type=armor_stand,name=Prison,scores={Event=8,EventPhase=5,Difficulty=1}] ~~~ execute @a ~~~ summon myth:prison_guard_1 ^3 ^1 ^1
execute @s[type=armor_stand,name=Prison,scores={Event=8,EventPhase=5,Difficulty=1}] ~~~ execute @a ~~~ summon myth:prison_guard_1 ^3 ^1 ^3
execute @s[type=armor_stand,name=Prison,scores={Event=8,EventPhase=5,Difficulty=1}] ~~~ execute @a ~~~ summon myth:prison_guard_1 ^-3 ^1 ^3
execute @s[type=armor_stand,name=Prison,scores={Event=8,EventPhase=5,Difficulty=1}] ~~~ execute @a ~~~ summon myth:prison_guard_1 ^3 ^1 ^-3
execute @s[type=armor_stand,name=Prison,scores={Event=8,EventPhase=5,Difficulty=1}] ~~~ tellraw @a {"rawtext":[{"text":"§4Oh, no! You didn't make it in time..."}]} 

execute @s[type=armor_stand,name=Prison,scores={Event=8,EventPhase=5,Difficulty=2}] ~~~ execute @a ~~~ summon myth:prison_guard_3 ^3 ^1 ^1
execute @s[type=armor_stand,name=Prison,scores={Event=8,EventPhase=5,Difficulty=2}] ~~~ execute @a ~~~ summon myth:prison_guard_3 ^3 ^1 ^3
execute @s[type=armor_stand,name=Prison,scores={Event=8,EventPhase=5,Difficulty=2}] ~~~ execute @a ~~~ summon myth:prison_guard_4 ^-3 ^1 ^3
execute @s[type=armor_stand,name=Prison,scores={Event=8,EventPhase=5,Difficulty=2}] ~~~ execute @a ~~~ summon myth:prison_guard_4 ^3 ^1 ^-3
execute @s[type=armor_stand,name=Prison,scores={Event=8,EventPhase=5,Difficulty=2}] ~~~ tellraw @a {"rawtext":[{"text":"§4Oh, no! You didn't make it in time..."}]} 

execute @s[type=armor_stand,name=Prison,scores={Event=8,EventPhase=5,Difficulty=3}] ~~~ execute @a ~~~ summon myth:prison_guard_5 ^3 ^1 ^1
execute @s[type=armor_stand,name=Prison,scores={Event=8,EventPhase=5,Difficulty=3}] ~~~ execute @a ~~~ summon myth:prison_guard_5 ^3 ^1 ^3
execute @s[type=armor_stand,name=Prison,scores={Event=8,EventPhase=5,Difficulty=3}] ~~~ execute @a ~~~ summon myth:prison_guard_6 ^-3 ^1 ^3
execute @s[type=armor_stand,name=Prison,scores={Event=8,EventPhase=5,Difficulty=3}] ~~~ execute @a ~~~ summon myth:prison_guard_6 ^3 ^1 ^-3
execute @s[type=armor_stand,name=Prison,scores={Event=8,EventPhase=5,Difficulty=3}] ~~~ tellraw @a {"rawtext":[{"text":"§4Oh, no! You didn't make it in time..."}]} 
execute @s[type=armor_stand,name=Prison,scores={Event=8,EventPhase=5}] ~~~ function EventReset








execute @s[type=armor_stand,name=Prison,scores={Event=9}] ~~~ scoreboard players add @e[type=armor_stand,name=Prison] TimerEvent1 1
execute @s[type=armor_stand,name=Prison,scores={Event=9,EventPhase=0}] ~~~ tellraw @a {"rawtext":[{"text":"§bAn inmate at the tree farm needs some Wheat. Bring 10 of them!"}]} 
execute @s[type=armor_stand,name=Prison,scores={Event=9}] ~~~ scoreboard players add @e[type=armor_stand,name=Prison] TimerAlarm 1
execute @s[type=armor_stand,name=Prison,scores={Event=9,TimerAlarm=20}] ~~~ playsound prison.myth.alarm.alarm @a
execute @s[type=armor_stand,name=Prison,scores={Event=9,TimerAlarm=40}] ~~~ playsound prison.myth.alarm.alarm @a
execute @s[type=armor_stand,name=Prison,scores={Event=9,TimerAlarm=60}] ~~~ playsound prison.myth.alarm.alarm @a
execute @s[type=armor_stand,name=Prison,scores={Event=9,EventPhase=0}] ~~~ scoreboard players set @e[type=armor_stand,name=Prison] EventPhase 1
execute @s[type=armor_stand,name=Prison,scores={Event=9,EventPhase=1}] ~~~ tp @e[x=53,y=61,z=-34,r=1] 91 69 8
execute @s[type=armor_stand,name=Prison,scores={Event=9,EventPhase=1}] ~~~ scoreboard players set @e[type=armor_stand,name=Prison] EventPhase 2
execute @s[type=armor_stand,name=Prison,scores={Event=9,EventPhase=3}] ~~~ setblock 53 57 -26 air
execute @s[type=armor_stand,name=Prison,scores={Event=9,EventPhase=3}] ~~~ scoreboard players add @a Coins 20
execute @s[type=armor_stand,name=Prison,scores={Event=9,EventPhase=3}] ~~~ scoreboard players add @a Coins 35
execute @s[type=armor_stand,name=Prison,scores={Event=9,EventPhase=3}] ~~~ tp @e[x=91,y=69,z=8,r=1] 53 61 -34
execute @s[type=armor_stand,name=Prison,scores={Event=9,EventPhase=3}] ~~~ tellraw @a {"rawtext":[{"text":"§6+55 coins"}]} 

execute @s[type=armor_stand,name=Prison,scores={Event=9,EventPhase=4}] ~~~ tellraw @a {"rawtext":[{"text":"§4 You didn't have 10 wheat, liar!"}]} 
execute @s[type=armor_stand,name=Prison,scores={Event=9,EventPhase=4,Coins=10..}] ~~~ scoreboard players remove @a Coins 10
execute @s[type=armor_stand,name=Prison,scores={Event=9,EventPhase=4}] ~~~ tellraw @a {"rawtext":[{"text":"§4 -10 coins"}]}
execute @s[type=armor_stand,name=Prison,scores={Event=9,EventPhase=4}] ~~~ setblock 53 57 -26 air
execute @s[type=armor_stand,name=Prison,scores={Event=9,EventPhase=4}] ~~~ tp @e[x=91,y=69,z=8,r=1] 53 61 -34
execute @s[type=armor_stand,name=Prison,scores={Event=9,EventPhase=4}] ~~~ function EventReset
execute @s[type=armor_stand,name=Prison,scores={Event=9,EventPhase=3}] ~~~ function EventReset

execute @s[type=armor_stand,name=Prison,scores={Event=9,EventPhase=2,TimerEvent1=1100}] ~~~ scoreboard players set @e[type=armor_stand,name=Prison] EventPhase 5
execute @s[type=armor_stand,name=Prison,scores={Event=9,EventPhase=5}] ~~~playsound prison.myth.alarm.alarm @a
execute @s[type=armor_stand,name=Prison,scores={Event=9,EventPhase=5,Difficulty=1}] ~~~ execute @a ~~~ summon myth:prison_guard_1 ^3 ^1 ^1
execute @s[type=armor_stand,name=Prison,scores={Event=9,EventPhase=5,Difficulty=1}] ~~~ execute @a ~~~ summon myth:prison_guard_1 ^3 ^1 ^3
execute @s[type=armor_stand,name=Prison,scores={Event=9,EventPhase=5,Difficulty=1}] ~~~ execute @a ~~~ summon myth:prison_guard_1 ^-3 ^1 ^3
execute @s[type=armor_stand,name=Prison,scores={Event=9,EventPhase=5,Difficulty=1}] ~~~ execute @a ~~~ summon myth:prison_guard_1 ^3 ^1 ^-3
execute @s[type=armor_stand,name=Prison,scores={Event=9,EventPhase=5,Difficulty=1}] ~~~ tellraw @a {"rawtext":[{"text":"§4Oh, no! You didn't make it in time..."}]} 

execute @s[type=armor_stand,name=Prison,scores={Event=9,EventPhase=5,Difficulty=2}] ~~~ execute @a ~~~ summon myth:prison_guard_3 ^3 ^1 ^1
execute @s[type=armor_stand,name=Prison,scores={Event=9,EventPhase=5,Difficulty=2}] ~~~ execute @a ~~~ summon myth:prison_guard_3 ^3 ^1 ^3
execute @s[type=armor_stand,name=Prison,scores={Event=9,EventPhase=5,Difficulty=2}] ~~~ execute @a ~~~ summon myth:prison_guard_4 ^-3 ^1 ^3
execute @s[type=armor_stand,name=Prison,scores={Event=9,EventPhase=5,Difficulty=2}] ~~~ execute @a ~~~ summon myth:prison_guard_4 ^3 ^1 ^-3
execute @s[type=armor_stand,name=Prison,scores={Event=9,EventPhase=5,Difficulty=2}] ~~~ tellraw @a {"rawtext":[{"text":"§4Oh, no! You didn't make it in time..."}]} 

execute @s[type=armor_stand,name=Prison,scores={Event=9,EventPhase=5,Difficulty=3}] ~~~ execute @a ~~~ summon myth:prison_guard_5 ^3 ^1 ^1
execute @s[type=armor_stand,name=Prison,scores={Event=9,EventPhase=5,Difficulty=3}] ~~~ execute @a ~~~ summon myth:prison_guard_5 ^3 ^1 ^3
execute @s[type=armor_stand,name=Prison,scores={Event=9,EventPhase=5,Difficulty=3}] ~~~ execute @a ~~~ summon myth:prison_guard_6 ^-3 ^1 ^3
execute @s[type=armor_stand,name=Prison,scores={Event=9,EventPhase=5,Difficulty=3}] ~~~ execute @a ~~~ summon myth:prison_guard_6 ^3 ^1 ^-3
execute @s[type=armor_stand,name=Prison,scores={Event=9,EventPhase=5,Difficulty=3}] ~~~ tellraw @a {"rawtext":[{"text":"§4Oh, no! You didn't make it in time..."}]} 
execute @s[type=armor_stand,name=Prison,scores={Event=9,EventPhase=5}] ~~~ function EventReset



execute @s[type=armor_stand,name=Prison,scores={Event=10,EventPhase=0}] ~~~ tellraw @a {"rawtext":[{"text":"§bThe mines will reset in 10 seconds! "}]} 
execute @s[type=armor_stand,name=Prison,scores={Event=10}] ~~~ scoreboard players add @e[type=armor_stand,name=Prison] TimerAlarm 1
execute @s[type=armor_stand,name=Prison,scores={Event=10,TimerAlarm=20}] ~~~ playsound prison.myth.alarm.alarm @a
execute @s[type=armor_stand,name=Prison,scores={Event=10,TimerAlarm=40}] ~~~ playsound prison.myth.alarm.alarm @a
execute @s[type=armor_stand,name=Prison,scores={Event=10,TimerAlarm=60}] ~~~ playsound prison.myth.alarm.alarm @a
execute @s[type=armor_stand,name=Prison,scores={Event=10,EventPhase=0}] ~~~ scoreboard players set @e[type=armor_stand,name=Prison] EventPhase 1
execute @s[type=armor_stand,name=Prison,scores={Event=10,EventPhase=1,TimerEvent1=0}] ~~~ title @a actionbar 10
execute @s[type=armor_stand,name=Prison,scores={Event=10,EventPhase=1}] ~~~ scoreboard players add @e[type=armor_stand,name=Prison] TimerEvent1 1
execute @s[type=armor_stand,name=Prison,scores={Event=10,EventPhase=1,TimerEvent1=20}] ~~~ title @a actionbar 9
execute @s[type=armor_stand,name=Prison,scores={Event=10,EventPhase=1,TimerEvent1=40}] ~~~ title @a actionbar 8
execute @s[type=armor_stand,name=Prison,scores={Event=10,EventPhase=1,TimerEvent1=60}] ~~~ title @a actionbar 7
execute @s[type=armor_stand,name=Prison,scores={Event=10,EventPhase=1,TimerEvent1=80}] ~~~ title @a actionbar 6
execute @s[type=armor_stand,name=Prison,scores={Event=10,EventPhase=1,TimerEvent1=100}] ~~~ title @a actionbar 5
execute @s[type=armor_stand,name=Prison,scores={Event=10,EventPhase=1,TimerEvent1=120}] ~~~ title @a actionbar 4
execute @s[type=armor_stand,name=Prison,scores={Event=10,EventPhase=1,TimerEvent1=140}] ~~~ title @a actionbar 3
execute @s[type=armor_stand,name=Prison,scores={Event=10,EventPhase=1,TimerEvent1=160}] ~~~ title @a actionbar 2
execute @s[type=armor_stand,name=Prison,scores={Event=10,EventPhase=1,TimerEvent1=180}] ~~~ title @a actionbar 1
execute @s[type=armor_stand,name=Prison,scores={Event=10,EventPhase=1,TimerEvent1=200}] ~~~ scoreboard players set @e[type=armor_stand,name=Prison] EventPhase 2
execute @s[type=armor_stand,name=Prison,scores={Event=10,EventPhase=2}] ~~~ scoreboard players set @e[type=armor_stand,name=Prison] StartMine1 1
execute @s[type=armor_stand,name=Prison,scores={Event=10,EventPhase=2}] ~~~ scoreboard players set @e[type=armor_stand,name=Prison] StartMine2 1
execute @s[type=armor_stand,name=Prison,scores={Event=10,EventPhase=2}] ~~~ scoreboard players set @e[type=armor_stand,name=Prison] StartMine3 1
execute @s[type=armor_stand,name=Prison,scores={Event=10,EventPhase=2}] ~~~ tellraw @a {"rawtext":[{"text":"§bThe mines were succesfully reset! "}]} 
execute @s[type=armor_stand,name=Prison,scores={Event=10,EventPhase=2}] ~~~  function EventReset

execute @s[type=armor_stand,name=Prison,scores={Event=11,EventPhase=0}] ~~~ tellraw @a {"rawtext":[{"text":"§bThe mines will reset in 10 seconds! "}]} 
execute @s[type=armor_stand,name=Prison,scores={Event=11}] ~~~ scoreboard players add @e[type=armor_stand,name=Prison] TimerAlarm 1
execute @s[type=armor_stand,name=Prison,scores={Event=11,TimerAlarm=20}] ~~~ playsound prison.myth.alarm.alarm @a
execute @s[type=armor_stand,name=Prison,scores={Event=11,TimerAlarm=40}] ~~~ playsound prison.myth.alarm.alarm @a
execute @s[type=armor_stand,name=Prison,scores={Event=11,TimerAlarm=60}] ~~~ playsound prison.myth.alarm.alarm @a
execute @s[type=armor_stand,name=Prison,scores={Event=11,EventPhase=0}] ~~~ scoreboard players set @e[type=armor_stand,name=Prison] EventPhase 1
execute @s[type=armor_stand,name=Prison,scores={Event=11,EventPhase=1,TimerEvent1=0}] ~~~ title @a actionbar 10
execute @s[type=armor_stand,name=Prison,scores={Event=11,EventPhase=1}] ~~~ scoreboard players add @e[type=armor_stand,name=Prison] TimerEvent1 1
execute @s[type=armor_stand,name=Prison,scores={Event=11,EventPhase=1,TimerEvent1=20}] ~~~ title @a actionbar 9
execute @s[type=armor_stand,name=Prison,scores={Event=11,EventPhase=1,TimerEvent1=40}] ~~~ title @a actionbar 8
execute @s[type=armor_stand,name=Prison,scores={Event=11,EventPhase=1,TimerEvent1=60}] ~~~ title @a actionbar 7
execute @s[type=armor_stand,name=Prison,scores={Event=11,EventPhase=1,TimerEvent1=80}] ~~~ title @a actionbar 6
execute @s[type=armor_stand,name=Prison,scores={Event=11,EventPhase=1,TimerEvent1=100}] ~~~ title @a actionbar 5
execute @s[type=armor_stand,name=Prison,scores={Event=11,EventPhase=1,TimerEvent1=120}] ~~~ title @a actionbar 4
execute @s[type=armor_stand,name=Prison,scores={Event=11,EventPhase=1,TimerEvent1=140}] ~~~ title @a actionbar 3
execute @s[type=armor_stand,name=Prison,scores={Event=11,EventPhase=1,TimerEvent1=160}] ~~~ title @a actionbar 2
execute @s[type=armor_stand,name=Prison,scores={Event=11,EventPhase=1,TimerEvent1=180}] ~~~ title @a actionbar 1
execute @s[type=armor_stand,name=Prison,scores={Event=11,EventPhase=1,TimerEvent1=200}] ~~~ scoreboard players set @e[type=armor_stand,name=Prison] EventPhase 2
execute @s[type=armor_stand,name=Prison,scores={Event=11,EventPhase=2}] ~~~ scoreboard players set @e[type=armor_stand,name=Prison] StartMine1 1
execute @s[type=armor_stand,name=Prison,scores={Event=11,EventPhase=2}] ~~~ scoreboard players set @e[type=armor_stand,name=Prison] StartMine2 1
execute @s[type=armor_stand,name=Prison,scores={Event=11,EventPhase=2}] ~~~ scoreboard players set @e[type=armor_stand,name=Prison] StartMine3 1
execute @s[type=armor_stand,name=Prison,scores={Event=11,EventPhase=2}] ~~~ tellraw @a {"rawtext":[{"text":"§bThe mines were succesfully reset! "}]} 
execute @s[type=armor_stand,name=Prison,scores={Event=11,EventPhase=2}] ~~~  function EventReset

execute @s[type=armor_stand,name=Prison,scores={Event=12,EventPhase=0}] ~~~ tellraw @a {"rawtext":[{"text":"§bThe mines will reset in 10 seconds! "}]} 
execute @s[type=armor_stand,name=Prison,scores={Event=12}] ~~~ scoreboard players add @e[type=armor_stand,name=Prison] TimerAlarm 1
execute @s[type=armor_stand,name=Prison,scores={Event=12,TimerAlarm=20}] ~~~ playsound prison.myth.alarm.alarm @a
execute @s[type=armor_stand,name=Prison,scores={Event=12,TimerAlarm=40}] ~~~ playsound prison.myth.alarm.alarm @a
execute @s[type=armor_stand,name=Prison,scores={Event=12,TimerAlarm=60}] ~~~ playsound prison.myth.alarm.alarm @a
execute @s[type=armor_stand,name=Prison,scores={Event=12,EventPhase=0}] ~~~ scoreboard players set @e[type=armor_stand,name=Prison] EventPhase 1
execute @s[type=armor_stand,name=Prison,scores={Event=12,EventPhase=1,TimerEvent1=0}] ~~~ title @a actionbar 10
execute @s[type=armor_stand,name=Prison,scores={Event=12,EventPhase=1}] ~~~ scoreboard players add @e[type=armor_stand,name=Prison] TimerEvent1 1
execute @s[type=armor_stand,name=Prison,scores={Event=12,EventPhase=1,TimerEvent1=20}] ~~~ title @a actionbar 9
execute @s[type=armor_stand,name=Prison,scores={Event=12,EventPhase=1,TimerEvent1=40}] ~~~ title @a actionbar 8
execute @s[type=armor_stand,name=Prison,scores={Event=12,EventPhase=1,TimerEvent1=60}] ~~~ title @a actionbar 7
execute @s[type=armor_stand,name=Prison,scores={Event=12,EventPhase=1,TimerEvent1=80}] ~~~ title @a actionbar 6
execute @s[type=armor_stand,name=Prison,scores={Event=12,EventPhase=1,TimerEvent1=100}] ~~~ title @a actionbar 5
execute @s[type=armor_stand,name=Prison,scores={Event=12,EventPhase=1,TimerEvent1=120}] ~~~ title @a actionbar 4
execute @s[type=armor_stand,name=Prison,scores={Event=12,EventPhase=1,TimerEvent1=140}] ~~~ title @a actionbar 3
execute @s[type=armor_stand,name=Prison,scores={Event=12,EventPhase=1,TimerEvent1=160}] ~~~ title @a actionbar 2
execute @s[type=armor_stand,name=Prison,scores={Event=12,EventPhase=1,TimerEvent1=180}] ~~~ title @a actionbar 1
execute @s[type=armor_stand,name=Prison,scores={Event=12,EventPhase=1,TimerEvent1=200}] ~~~ scoreboard players set @e[type=armor_stand,name=Prison] EventPhase 2
execute @s[type=armor_stand,name=Prison,scores={Event=12,EventPhase=2}] ~~~ scoreboard players set @e[type=armor_stand,name=Prison] StartMine1 1
execute @s[type=armor_stand,name=Prison,scores={Event=12,EventPhase=2}] ~~~ scoreboard players set @e[type=armor_stand,name=Prison] StartMine2 1
execute @s[type=armor_stand,name=Prison,scores={Event=12,EventPhase=2}] ~~~ scoreboard players set @e[type=armor_stand,name=Prison] StartMine3 1
execute @s[type=armor_stand,name=Prison,scores={Event=12,EventPhase=2}] ~~~ tellraw @a {"rawtext":[{"text":"§bThe mines were succesfully reset! "}]} 
execute @s[type=armor_stand,name=Prison,scores={Event=12,EventPhase=2}] ~~~  function EventReset



execute @s[type=armor_stand,name=Prison,scores={Event=13}] ~~~ function EventReset
execute @s[type=armor_stand,name=Prison,scores={Event=14}] ~~~ function EventReset
execute @s[type=armor_stand,name=Prison,scores={Event=15}] ~~~ function EventReset
execute @s[type=armor_stand,name=Prison,scores={Event=16}] ~~~ function EventReset
execute @s[type=armor_stand,name=Prison,scores={Event=17}] ~~~ function EventReset
execute @s[type=armor_stand,name=Prison,scores={Event=18}] ~~~ function EventReset
execute @s[type=armor_stand,name=Prison,scores={Event=19}] ~~~ function EventReset
execute @s[type=armor_stand,name=Prison,scores={Event=20}] ~~~ function EventReset