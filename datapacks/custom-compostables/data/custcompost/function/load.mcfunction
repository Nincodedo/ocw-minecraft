scoreboard objectives add lookingatcomposter dummy
scoreboard objectives add composterlevel dummy
scoreboard objectives add composterfillresult dummy
scoreboard objectives add hopperslotcount dummy
scoreboard objectives add hopperslot0 dummy
scoreboard objectives add hopperslot1 dummy
scoreboard objectives add hopperslot2 dummy
scoreboard objectives add hopperslot3 dummy
scoreboard objectives add hopperslot4 dummy
scoreboard objectives add hopperslot0other dummy
scoreboard objectives add hopperslot1other dummy
scoreboard objectives add hopperslot2other dummy
scoreboard objectives add hopperslot3other dummy
scoreboard objectives add hopperslot4other dummy
scoreboard objectives add hopperslottotal dummy

execute if entity @e[tag=hopper_enabled_composter] run schedule function custcompost:composter/hopper/schedule_hopper_tick_check 8t
