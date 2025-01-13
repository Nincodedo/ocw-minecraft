execute anchored eyes run fill ^-1 ^-1 ^ ^1 ^1 ^5 minecraft:command_block{Command:"function custcompost:composter/check_new",auto:1b} replace minecraft:composter[level=0]

schedule function custcompost:composter/check_broken_composter 2.5s

advancement revoke @s only custcompost:composter/placed
