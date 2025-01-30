execute @e[type=armor_stand,name=Prison,scores={Tutorial=1,TutorialPhase=0}] ~ ~ ~ setblock 0 68 -59 barrier
execute @e[type=armor_stand,name=Prison,scores={Tutorial=1,TutorialPhase=0}] ~ ~ ~ setblock -1 68 -60 barrier
execute @e[type=armor_stand,name=Prison,scores={Tutorial=1,TutorialPhase=0}] ~ ~ ~ setblock 1 68 -60 barrier
execute @e[type=armor_stand,name=Prison,scores={Tutorial=1,TutorialPhase=0}] ~ ~ ~ setblock 0 68 -61 barrier
execute @e[type=armor_stand,name=Prison,scores={Tutorial=1,TutorialPhase=0}] ~ ~ ~ setblock 0 68 -61 barrier
execute @e[type=armor_stand,name=Prison,scores={Tutorial=1,TutorialPhase=0}] ~ ~ ~ setblock 0 70 -60 barrier
execute @e[type=armor_stand,name=Prison,scores={Tutorial=1,TutorialPhase=0}] ~ ~ ~ tp @a 0 68 -60 facing 0 68 -55
execute @e[type=armor_stand,name=Prison,scores={Tutorial=1,TutorialPhase=0}] ~ ~ ~ summon myth:tutorial_prisoner 2 68 -60
execute @e[type=armor_stand,name=Prison,scores={Tutorial=1,TutorialPhase=0}] ~ ~ ~ summon myth:tutorial_prisoner 4 68 -60
execute @e[type=armor_stand,name=Prison,scores={Tutorial=1,TutorialPhase=0}] ~ ~ ~ summon myth:tutorial_prisoner -2 68 -60
execute @e[type=armor_stand,name=Prison,scores={Tutorial=1,TutorialPhase=0}] ~ ~ ~ summon myth:tutorial_prisoner -4 68 -60
execute @e[type=armor_stand,name=Prison,scores={Tutorial=1,TutorialPhase=0}] ~ ~ ~ summon myth:prison_guard_tutorial -3 68 -53
execute @e[type=armor_stand,name=Prison,scores={Tutorial=1,TutorialPhase=0}] ~ ~ ~ summon myth:prison_guard_tutorial 3 68 -53
execute @e[type=armor_stand,name=Prison,scores={Tutorial=1,TutorialPhase=0}] ~ ~ ~ summon myth:warden 0 68 -53
execute @e[type=armor_stand,name=Prison,scores={Tutorial=1,TutorialPhase=0}] ~ ~ ~ time set day
execute @e[type=armor_stand,name=Prison,scores={Tutorial=1,TutorialPhase=0}] ~ ~ ~ tag @a add OldPlayers
execute @e[type=myth:warden,c=1] ~ ~ ~ tp @s ~ ~ ~ 180 0
execute @e[type=myth:prison_guard_tutorial] ~ ~ ~ tp @s ~ ~ ~ 180 0
execute @e[type=armor_stand,name=Prison,scores={Tutorial=1,TutorialPhase=0}] ~ ~ ~ effect @e[type=myth:prison_guard_tutorial] slowness 99999 10 true
execute @e[type=armor_stand,name=Prison,scores={Tutorial=1,TutorialPhase=0}] ~ ~ ~ effect @a invisibility 200 10 true
execute @e[type=armor_stand,name=Prison,scores={Tutorial=1,TutorialPhase=0}] ~ ~ ~ scoreboard players set @e[type=armor_stand,name=Prison] TutorialPhase 1
execute @e[type=armor_stand,name=Prison,scores={Tutorial=1,TutorialPhase=1}] ~ ~ ~ scoreboard players add @e[type=armor_stand,name=Prison] TimerTutorial 1
execute @e[type=armor_stand,name=Prison,scores={Tutorial=1,TimerTutorial=40}] ~ ~ ~ scoreboard players set @e[type=armor_stand,name=Prison] Tutorial 2





#Tutorial area 0 69 -166

execute @e[type=armor_stand,name=Prison,scores={Tutorial=2}] ~ ~ ~ scoreboard players set @e[type=armor_stand,name=Prison] TimerTutorial 0
execute @e[type=armor_stand,name=Prison,scores={Tutorial=2}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"Welcome to your new home."}]} 
execute @e[type=armor_stand,name=Prison,scores={Tutorial=2}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"I am Warden Usef, these are your guards."}]} 
execute @e[type=armor_stand,name=Prison,scores={Tutorial=2}] ~ ~ ~ playsound prison.myth.warden.voiceacting @a 0 68 -60
execute @e[type=armor_stand,name=Prison,scores={Tutorial=2}] ~ ~ ~ scoreboard players set @e[type=armor_stand,name=Prison] Tutorial 3

execute @e[type=armor_stand,name=Prison,scores={Tutorial=3}] ~ ~ ~ scoreboard players add @e[type=armor_stand,name=Prison] TimerTutorial 1
execute @e[type=armor_stand,name=Prison,scores={Tutorial=3,TimerTutorial=140}] ~ ~ ~ scoreboard players set @e[type=armor_stand,name=Prison] Tutorial 4



execute @e[type=armor_stand,name=Prison,scores={Tutorial=4}] ~ ~ ~ scoreboard players set @e[type=armor_stand,name=Prison] TimerTutorial 0
execute @e[type=armor_stand,name=Prison,scores={Tutorial=4}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"They are highly intelligent and cannot be bribed."}]} 
execute @e[type=armor_stand,name=Prison,scores={Tutorial=4}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"They also enforce the rules, without exception. I suggest you learn the rules and follow them…diligently."}]} 
execute @e[type=armor_stand,name=Prison,scores={Tutorial=4}] ~ ~ ~ scoreboard players set @e[type=armor_stand,name=Prison] Tutorial 5

execute @e[type=armor_stand,name=Prison,scores={Tutorial=5}] ~ ~ ~ scoreboard players add @e[type=armor_stand,name=Prison] TimerTutorial 1
execute @e[type=armor_stand,name=Prison,scores={Tutorial=5,TimerTutorial=300}] ~ ~ ~ scoreboard players set @e[type=armor_stand,name=Prison] Tutorial 6


execute @e[type=armor_stand,name=Prison,scores={Tutorial=6}] ~ ~ ~ scoreboard players set @e[type=armor_stand,name=Prison] TimerTutorial 0
execute @e[type=armor_stand,name=Prison,scores={Tutorial=6}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"Some of these rules are self-evident. The other ones I’ll explain simply."}]} 
execute @e[type=armor_stand,name=Prison,scores={Tutorial=6}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"Firstly, you earn points by mining. You can use these points to access new areas, purchase items,…you’ll figure out the rest."}]} 
execute @e[type=armor_stand,name=Prison,scores={Tutorial=6}] ~ ~ ~ scoreboard players set @e[type=armor_stand,name=Prison] Tutorial 7


execute @e[type=armor_stand,name=Prison,scores={Tutorial=7}] ~ ~ ~ scoreboard players add @e[type=armor_stand,name=Prison] TimerTutorial 1
execute @e[type=armor_stand,name=Prison,scores={Tutorial=7,TimerTutorial=380}] ~ ~ ~ scoreboard players set @e[type=armor_stand,name=Prison] Tutorial 8

execute @e[type=armor_stand,name=Prison,scores={Tutorial=8}] ~ ~ ~ scoreboard players set @e[type=armor_stand,name=Prison] TimerTutorial 0
execute @e[type=armor_stand,name=Prison,scores={Tutorial=8}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"Points are your lifeblood here. The more you work, the better off you’ll be. Secondly, no disturbing of the peace."}]} 
execute @e[type=armor_stand,name=Prison,scores={Tutorial=8}] ~ ~ ~ clear @a
execute @e[type=armor_stand,name=Prison,scores={Tutorial=8}] ~ ~ ~ scoreboard players set @e[type=armor_stand,name=Prison] Tutorial 9

execute @e[type=armor_stand,name=Prison,scores={Tutorial=9}] ~ ~ ~ scoreboard players add @e[type=armor_stand,name=Prison] TimerTutorial 1
execute @e[type=armor_stand,name=Prison,scores={Tutorial=9,TimerTutorial=300}] ~ ~ ~ scoreboard players set @e[type=armor_stand,name=Prison] Tutorial 10


execute @e[type=armor_stand,name=Prison,scores={Tutorial=10}] ~ ~ ~ scoreboard players set @e[type=armor_stand,name=Prison] TimerTutorial 0
execute @e[type=armor_stand,name=Prison,scores={Tutorial=10}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§bWelcome to Acheron. Enjoy your stay."}]} 
execute @e[type=armor_stand,name=Prison,scores={Tutorial=10}] ~ ~ ~ give @a wooden_pickaxe 1 0 {"minecraft:can_destroy":{"blocks":["stone","coal_ore"]}} 
execute @e[type=armor_stand,name=Prison,scores={Tutorial=10}] ~ ~ ~ give @a leather_boots
execute @e[type=armor_stand,name=Prison,scores={Tutorial=10}] ~ ~ ~ give @a leather_chestplate
execute @e[type=armor_stand,name=Prison,scores={Tutorial=10}] ~ ~ ~ give @a leather_helmet
execute @e[type=armor_stand,name=Prison,scores={Tutorial=10}] ~ ~ ~ give @a leather_leggings
execute @e[type=armor_stand,name=Prison,scores={Tutorial=10}] ~ ~ ~ give @a cooked_beef 10
execute @e[type=armor_stand,name=Prison,scores={Tutorial=10}] ~ ~ ~ scoreboard players set @e[type=armor_stand,name=Prison] Tutorial 11

execute @e[type=armor_stand,name=Prison,scores={Tutorial=11}] ~ ~ ~ scoreboard players add @e[type=armor_stand,name=Prison] TimerTutorial 1
execute @e[type=armor_stand,name=Prison,scores={Tutorial=11,TimerTutorial=60}] ~ ~ ~ scoreboard players set @e[type=armor_stand,name=Prison] Tutorial 12

execute @e[type=armor_stand,name=Prison,scores={Tutorial=12}] ~ ~ ~ scoreboard players set @e[type=armor_stand,name=Prison] MineHaste 0
execute @e[type=armor_stand,name=Prison,scores={Tutorial=12}] ~ ~ ~ effect @a instant_health 1 10 true
execute @e[type=armor_stand,name=Prison,scores={Tutorial=12}] ~ ~ ~ setblock 0 68 -59 air
execute @e[type=armor_stand,name=Prison,scores={Tutorial=12}] ~ ~ ~ setblock -1 68 -60 air
execute @e[type=armor_stand,name=Prison,scores={Tutorial=12}] ~ ~ ~ setblock 1 68 -60 air
execute @e[type=armor_stand,name=Prison,scores={Tutorial=12}] ~ ~ ~ setblock 0 68 -61 air
execute @e[type=armor_stand,name=Prison,scores={Tutorial=12}] ~ ~ ~ setblock 0 68 -61 air
execute @e[type=armor_stand,name=Prison,scores={Tutorial=12}] ~ ~ ~ setblock 0 70 -60 air
execute @e[type=armor_stand,name=Prison,scores={Tutorial=12}] ~ ~ ~ event entity @e[type=myth:warden,x=0,y=68,z=-53,r=5] myth:remove
execute @e[type=armor_stand,name=Prison,scores={Tutorial=12}] ~ ~ ~ event entity @e[type=myth:prison_guard_tutorial,x=0,y=68,z=-53,r=5] myth:remove
execute @e[type=armor_stand,name=Prison,scores={Tutorial=12}] ~ ~ ~ event entity @e[type=myth:tutorial_prisoner,x=0,y=68,z=-53,r=20] myth:remove
execute @e[type=armor_stand,name=Prison,scores={Tutorial=12}] ~ ~ ~ scoreboard players set @a Coins 15
execute @e[type=armor_stand,name=Prison,scores={Tutorial=12}] ~ ~ ~ tp @a 35 69 13
execute @e[type=armor_stand,name=Prison,scores={Tutorial=12}] ~ ~ ~ function EventOn
execute @e[type=armor_stand,name=Prison,scores={Tutorial=12}] ~ ~ ~ setworldspawn 33 69 11
execute @e[type=armor_stand,name=Prison,scores={Tutorial=12}] ~ ~ ~ spawnpoint @a 33 69 11
execute @e[type=armor_stand,name=Prison,scores={Tutorial=12}] ~ ~ ~ gamemode a @a
execute @e[type=armor_stand,name=Prison,scores={Tutorial=12}] ~ ~ ~ effect @a clear
execute @e[type=armor_stand,name=Prison,scores={Tutorial=12}] ~ ~ ~ scoreboard players set @a spawn_level 1
execute @e[type=armor_stand,name=Prison,scores={Tutorial=12}] ~ ~ ~ scoreboard players set @e[type=armor_stand,name=Prison] Tutorial 13



#48 61 -33 aici e armorstandu
