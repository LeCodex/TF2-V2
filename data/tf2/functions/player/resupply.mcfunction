# Reset
## Objectives
scoreboard players set @s tf.regeneration 0

## Class functions
execute if score @s tf.class matches 1 run function tf2:player/classes/scout/resupply
execute if score @s tf.class matches 2 run function tf2:player/classes/soldier/resupply
execute if score @s tf.class matches 3 run function tf2:player/classes/pyro/resupply
execute if score @s tf.class matches 4 run function tf2:player/classes/demoman/resupply
execute if score @s tf.class matches 5 run function tf2:player/classes/heavy/resupply
execute if score @s tf.class matches 6 run function tf2:player/classes/engineer/resupply
execute if score @s tf.class matches 7 run function tf2:player/classes/medic/resupply
execute if score @s tf.class matches 8 run function tf2:player/classes/sniper/resupply
execute if score @s tf.class matches 9 run function tf2:player/classes/spy/resupply

## Health
scoreboard players operation @s tf.health = @s tf.maxHealth

## Visuals
playsound entity.player.levelup player @s ~ ~ ~ 1 .5
particle dust 1 .5 1 1 ~ ~1 ~ .25 .5 .25 .01 50

## Attributes
attribute @s generic.attack_damage base set 0

## Weapons
function tf2:weapon/reset
