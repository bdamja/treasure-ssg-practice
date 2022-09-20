# This function runs when you join the world,
# and is also executed when you manually do
# /reload in game. You want the commands here
# to be executed on world join.

tellraw @a "initializing example practice map datapack"

# set gamerules
gamerule commandBlockOutput false
gamerule disableRaids true
gamerule doDaylightCycle false
gamerule doInsomnia false
gamerule doImmediateRespawn true
gamerule doMobSpawning false
gamerule doPatrolSpawning false
gamerule doTraderSpawning false
gamerule doWeatherCycle false
gamerule keepInventory true
gamerule mobGriefing false
gamerule randomTickSpeed 0
gamerule spawnRadius 0

# add general objectives
scoreboard objectives add timer dummy ""
scoreboard objectives add nums dummy
scoreboard objectives add state dummy
# state 0 = main lobby
# state 10 = overworld lobby
# state 11 = overworld practice
# state 20 = nether lobby
# state 21 = nether practice
# etc.

# add statistic-based objectives
scoreboard objectives add used_fns minecraft.used:minecraft.flint_and_steel

# add setting objectives
scoreboard objectives add reset_w_diamond dummy
scoreboard objectives add has_settings dummy

# set default settings if the player has no settings
execute as @a unless score @s has_settings matches 0.. run function example:settings/defaults

# set constants
scoreboard players set 2 nums 2

# forceload certain chunks
function example:util/forceload
