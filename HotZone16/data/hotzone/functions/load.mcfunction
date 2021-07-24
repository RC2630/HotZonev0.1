tellraw @a {"text": "Loading Successful", "color": "#0000FF"}

gamerule keepInventory true
time set 600
worldborder set 500

setworldspawn 0 75 0

setblock 100 75 0 obsidian
setblock -100 75 0 obsidian
setblock 0 75 100 obsidian
setblock 0 75 -100 obsidian

scoreboard objectives add zone1 dummy
scoreboard objectives add zone2 dummy
scoreboard objectives add zone3 dummy
scoreboard objectives add zone4 dummy

scoreboard players set @a zone1 0
scoreboard players set @a zone2 0
scoreboard players set @a zone3 0
scoreboard players set @a zone4 0

scoreboard objectives add progress dummy
scoreboard players set @a progress 0
scoreboard objectives setdisplay sidebar progress

scoreboard objectives add zone1c dummy
scoreboard objectives add zone2c dummy
scoreboard objectives add zone3c dummy
scoreboard objectives add zone4c dummy
scoreboard objectives add over dummy

scoreboard players set @a zone1c 0
scoreboard players set @a zone2c 0
scoreboard players set @a zone3c 0
scoreboard players set @a zone4c 0
scoreboard players set @a over 0

tellraw @a {"text": "All loading operations complete", "color": "#0000FF"}