# Falloff/Rampup calculation (ramp-up until 9,7536m or 19 #dist then falloff so max = 19,5072 or 39 #dist)
execute if score #dist tf.value > #maxFalloffDist tf.value run scoreboard players operation #dist tf.value = #maxFalloffDist tf.value
scoreboard players operation #oneMinusDist tf.value = #maxFalloffDist tf.value
scoreboard players operation #oneMinusDist tf.value -= #dist tf.value

scoreboard players set #ratio tf.value 100
scoreboard players operation #ratio tf.value *= #oneMinusDist tf.value
scoreboard players operation #ratio tf.value /= #maxFalloffDist tf.value
scoreboard players add #ratio tf.value 50

# tellraw @a {"score":{"objective":"tf.value","name":"#ratio"}}

scoreboard players operation #damage tf.value *= #ratio tf.value
