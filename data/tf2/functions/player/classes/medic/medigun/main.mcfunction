# Patient
## Healing
scoreboard players operation #link tf.value = @s tf.linkedID
execute as @a if score @s tf.ID = #link tf.value run function tf2:player/classes/medic/medigun/patient

## Disconnect if patient is dead
execute if entity @a[tag=tf.patient,scores={tf.health=..0}] run function tf2:player/classes/medic/medigun/disconnect

## Disconnect if patient is invisible
execute if entity @a[tag=tf.patient,scores={tf.blink=1..}] run function tf2:player/classes/medic/medigun/disconnect


# Ubercharge Building
scoreboard players operation #threshold tf.value = @p[tag=tf.patient] tf.maxHealth
scoreboard players operation #threshold tf.value *= #1425 tf.value
scoreboard players operation #threshold tf.value /= #1000 tf.value

execute if score @p[tag=tf.patient] tf.health < #threshold tf.value run scoreboard players add @s[scores={tf.ubercharge=..9999999}] tf.ubercharge 12500
execute if score @p[tag=tf.patient] tf.health >= #threshold tf.value run scoreboard players add @s[scores={tf.ubercharge=..9999999}] tf.ubercharge 6250

## Sound
execute if score @s tf.ubercharge matches 10000000.. unless entity @s[tag=tf.uberchargeReached] run function tf2:player/classes/medic/ubercharge/reach

# Beam
## Particles and wall
execute positioned ~ ~1 ~ facing entity @p[tag=tf.patient] eyes run function tf2:player/classes/medic/medigun/beam
scoreboard players add @s[tag=!tf.hit_wall,scores={tf.disconnectTmr=..19}] tf.disconnectTmr 1
scoreboard players remove @s[tag=tf.hit_wall] tf.disconnectTmr 1
tag @s remove tf.hit_wall

## Disconnect on loss of sight
execute if score @s tf.disconnectTmr matches ..0 run function tf2:player/classes/medic/medigun/disconnect

## Disconnect if too far away
execute if entity @a[tag=tf.patient,distance=10.3..] run function tf2:player/classes/medic/medigun/disconnect


# Sound
scoreboard players operation #sound tf.value = @s tf.plyTimer
scoreboard players operation #sound tf.value %= #20 tf.value
execute if score #sound tf.value matches 0 run playsound minecraft:block.beacon.ambient player @a ~ ~1 ~ .3 2


# Disconnect when holstering
execute unless data entity @s {SelectedItem:{tag:{tfTags:{flags:["tf.medigun"]}}}} unless data entity @s {Inventory:[{Slot:-106b}]} run function tf2:player/classes/medic/medigun/disconnect
