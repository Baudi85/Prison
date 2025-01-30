execute @e[type=myth:spawn] ~~~ detect ~ 0 ~ netherrack 0 tag @s add pass_check1
execute @e[tag=pass_check1] ~~~ detect ~ ~1 ~ air 0 tag @s add pass_check2
execute @e[tag=pass_check2] ~~~ detect ~ ~ ~ air 0 tag @s add safe_spawn
scoreboard players random @s var2 0 5
execute @p[scores={spawn_level=1}] ~~~ execute @s[scores={var2=0}] ~ ~ ~ execute @e[type=myth:spawn, tag=safe_spawn] ~ ~ ~ summon myth:prison_guard_1 ~ ~ ~
execute @p[scores={spawn_level=1}] ~~~ execute @s[scores={var2=1}] ~ ~ ~ execute @e[type=myth:spawn, tag=safe_spawn] ~ ~ ~ summon myth:prison_guard_2 ~ ~ ~
execute @p[scores={spawn_level=2}] ~~~ execute @s[scores={var2=0}] ~ ~ ~ execute @e[type=myth:spawn, tag=safe_spawn] ~ ~ ~ summon myth:prison_guard_1 ~ ~ ~
execute @p[scores={spawn_level=2}] ~~~ execute @s[scores={var2=1}] ~ ~ ~ execute @e[type=myth:spawn, tag=safe_spawn] ~ ~ ~ summon myth:prison_guard_2 ~ ~ ~
execute @p[scores={spawn_level=2}] ~~~ execute @s[scores={var2=2}] ~ ~ ~ execute @e[type=myth:spawn, tag=safe_spawn] ~ ~ ~ summon myth:prison_guard_3 ~ ~ ~
execute @p[scores={spawn_level=2}] ~~~ execute @s[scores={var2=3}] ~ ~ ~ execute @e[type=myth:spawn, tag=safe_spawn] ~ ~ ~ summon myth:prison_guard_4 ~ ~ ~
execute @p[scores={spawn_level=3}] ~~~ execute @s[scores={var2=0}] ~ ~ ~ execute @e[type=myth:spawn, tag=safe_spawn] ~ ~ ~ summon myth:prison_guard_1 ~ ~ ~
execute @p[scores={spawn_level=3}] ~~~ execute @s[scores={var2=1}] ~ ~ ~ execute @e[type=myth:spawn, tag=safe_spawn] ~ ~ ~ summon myth:prison_guard_2 ~ ~ ~
execute @p[scores={spawn_level=3}] ~~~ execute @s[scores={var2=2}] ~ ~ ~ execute @e[type=myth:spawn, tag=safe_spawn] ~ ~ ~ summon myth:prison_guard_3 ~ ~ ~
execute @p[scores={spawn_level=3}] ~~~ execute @s[scores={var2=3}] ~ ~ ~ execute @e[type=myth:spawn, tag=safe_spawn] ~ ~ ~ summon myth:prison_guard_4 ~ ~ ~
execute @p[scores={spawn_level=3}] ~~~ execute @s[scores={var2=4}] ~ ~ ~ execute @e[type=myth:spawn, tag=safe_spawn] ~ ~ ~ summon myth:prison_guard_5 ~ ~ ~
execute @p[scores={spawn_level=3}] ~~~ execute @s[scores={var2=5}] ~ ~ ~ execute @e[type=myth:spawn, tag=safe_spawn] ~ ~ ~ summon myth:prison_guard_6 ~ ~ ~

event entity @e[type=myth:spawn] myth:remove
