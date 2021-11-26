# Reset
scoreboard players set @s tf.dmgGlobal 100
scoreboard players set @s tf.dmgHitscan 100
scoreboard players set @s tf.dmgExplosive 100
scoreboard players set @s tf.dmgFire 100
scoreboard players set @s tf.dmgMelee 100
tag @s add tf.current
tag @s remove tf.canPickupHealth

# States
## Alive
execute if score @s tf.respawnTimer matches 0 run function tf2:player/alive

## Dead
execute if score @s tf.respawnTimer matches 1.. run function tf2:player/dead


# Sprint disabling
effect give @s[scores={tf.hunger=7..}] hunger 1 255 true
effect give @s[scores={tf.hunger=..5}] saturation 1 0 true


# Team recogition
## Invisiblity (Armor and heads are managed by the individual classes)
effect give @s invisibility 1 0 true

## Scoreboard Objective
scoreboard players set @a[team=tf.blu] tf.team 1
scoreboard players set @a[team=tf.red] tf.team 2


# Data storage
execute store result score @s tf.fall run data get entity @s FallDistance
execute store result score @s tf.yRot run data get entity @s Rotation[0]
execute store result score @s tf.slot run data get entity @s SelectedItemSlot


# Cleanup
tag @e[tag=tf.raycast.hit] remove tf.raycast.hit
tag @s remove tf.shooter
tag @s remove tf.current

scoreboard players operation @e[tag=tf.setID] tf.ID = @s tf.ID
tag @e[tag=tf.setID] remove tf.setID

scoreboard players set @s tf.shoot 0
scoreboard players set @s tf.shoot2 0

stopsound @a player minecraft:item.armor.equip_leather
stopsound @a player minecraft:entity.item.pickup
