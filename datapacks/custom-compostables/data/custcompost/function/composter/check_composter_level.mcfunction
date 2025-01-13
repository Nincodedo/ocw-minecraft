function custcompost:composter/update_composter_level
execute if score @s[tag=composter_interaction_disabled] composterlevel matches 7.. run schedule function custcompost:composter/schedule_composter_enable_interaction 1s
execute if score @s[tag=!composter_interaction_disabled] composterlevel matches ..6 run function custcompost:composter/increase_composter_level
execute if score @s[tag=composter_interaction_disabled] composterlevel matches ..6 run function custcompost:composter/enable_interaction
execute if score @s[tag=!composter_interaction_disabled] composterlevel matches 7.. run function custcompost:composter/disable_interaction
