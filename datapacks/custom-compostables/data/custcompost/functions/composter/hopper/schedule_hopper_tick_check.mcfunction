execute as @e[tag=hopper_enabled_composter] at @s if predicate custcompost:composter/hopper/can_run_composter run function custcompost:composter/hopper/hopper_tick_check

execute if entity @e[tag=hopper_enabled_composter] run schedule function custcompost:composter/hopper/schedule_hopper_tick_check 8t
