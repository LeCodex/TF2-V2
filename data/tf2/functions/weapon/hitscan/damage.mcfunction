# Falloff/Rampup calculation (ramp-up until 9,7536m then falloff so max = 19,5072 or 39 #dist)
execute if score #dist tf.value > #maxFalloffDist tf.value run scoreboard players operation #dist tf.value = #maxFalloffDist tf.value
scoreboard players operation #oneMinusDist tf.value = #maxFalloffDist tf.value
scoreboard players operation #oneMinusDist tf.value -= #dist tf.value

scoreboard players set #ratio tf.value 100
scoreboard players operation #ratio tf.value *= #oneMinusDist tf.value
scoreboard players operation #ratio tf.value /= #maxFalloffDist tf.value
scoreboard players add #ratio 50


# CRIT!
execute if entity @s[tag=tf.crit] run function tf2:weapon/crit
tag @s remove tf.crit


# Damage calculation
execute store result score #damage tf.value run data get entity @p[tag=tf.shooter] SelectedItem.tag.tfTags.damage
scoreboard players operation #damage tf.value *= #ratio tf.value
## No division by 100 since the health is multiplied by 100 and the damage stat isn't


function tf2:player/health/damage
