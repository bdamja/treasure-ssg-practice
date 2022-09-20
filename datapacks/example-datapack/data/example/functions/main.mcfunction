# This function runs every tick. This is
# where you would put commands that you
# would want to be executed every tick.

# example: check if player is inside of a nether portal
execute at @a run execute if block ~ ~ ~ nether_portal run tellraw @a [{"text":"in a nether portal"}]

# example: constantly disable certain sounds
stopsound @a * minecraft:entity.enderman.stare
stopsound @a * minecraft:block.campfire.crackle
stopsound @a * minecraft:block.fire.ambient
