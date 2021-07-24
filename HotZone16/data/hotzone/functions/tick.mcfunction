scoreboard players set @a progress 0
execute as @a run scoreboard players operation @s progress += @s zone1
execute as @a run scoreboard players operation @s progress += @s zone2
execute as @a run scoreboard players operation @s progress += @s zone3
execute as @a run scoreboard players operation @s progress += @s zone4

execute as @a run execute positioned 100 76 0 if entity @s[distance=..1] run execute if score @s zone1 matches ..2499 run scoreboard players add @s zone1 1
execute as @a run execute positioned -100 76 0 if entity @s[distance=..1] run execute if score @s zone2 matches ..2499 run scoreboard players add @s zone2 1
execute as @a run execute positioned 0 76 100 if entity @s[distance=..1] run execute if score @s zone3 matches ..2499 run scoreboard players add @s zone3 1
execute as @a run execute positioned 0 76 -100 if entity @s[distance=..1] run execute if score @s zone4 matches ..2499 run scoreboard players add @s zone4 1

execute as @a run execute if score @s zone1 matches 2500 run setblock 100 75 0 crying_obsidian
execute as @a run execute if score @s zone2 matches 2500 run setblock -100 75 0 crying_obsidian
execute as @a run execute if score @s zone3 matches 2500 run setblock 0 75 100 crying_obsidian
execute as @a run execute if score @s zone4 matches 2500 run setblock 0 75 -100 crying_obsidian

execute as @a run execute if score @s zone1 matches 2500 run execute if score @s zone1c matches 0 run say Zone 1 Captured!
execute as @a run execute if score @s zone1 matches 2500 run scoreboard players set @s zone1c 1

execute as @a run execute if score @s zone2 matches 2500 run execute if score @s zone2c matches 0 run say Zone 2 Captured!
execute as @a run execute if score @s zone2 matches 2500 run scoreboard players set @s zone2c 1

execute as @a run execute if score @s zone3 matches 2500 run execute if score @s zone3c matches 0 run say Zone 3 Captured!
execute as @a run execute if score @s zone3 matches 2500 run scoreboard players set @s zone3c 1

execute as @a run execute if score @s zone4 matches 2500 run execute if score @s zone4c matches 0 run say Zone 4 Captured!
execute as @a run execute if score @s zone4 matches 2500 run scoreboard players set @s zone4c 1

execute as @a run execute if score @s progress matches 10000 run execute if score @s over matches 0 run title @a title {"text":"Game Over!","color":"dark_red"}
execute as @a run execute if score @s progress matches 10000 run scoreboard players set @s over 1