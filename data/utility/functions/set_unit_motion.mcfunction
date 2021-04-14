execute store result score #OldX tf.value run data get entity @s Pos[0] 1000
execute store result score #OldY tf.value run data get entity @s Pos[1] 1000
execute store result score #OldZ tf.value run data get entity @s Pos[2] 1000

tp @s ^ ^ ^1

execute store result score #X tf.value run data get entity @s Pos[0] 1000
execute store result score #Y tf.value run data get entity @s Pos[1] 1000
execute store result score #Z tf.value run data get entity @s Pos[2] 1000

scoreboard players operation #X tf.value -= #OldX tf.value
scoreboard players operation #Y tf.value -= #OldY tf.value
scoreboard players operation #Z tf.value -= #OldZ tf.value
scoreboard players operation #X tf.value *= #Scale tf.value
scoreboard players operation #Y tf.value *= #Scale tf.value
scoreboard players operation #Z tf.value *= #Scale tf.value
scoreboard players operation #X tf.value /= #InverseScale tf.value
scoreboard players operation #Y tf.value /= #InverseScale tf.value
scoreboard players operation #Z tf.value /= #InverseScale tf.value

execute store result entity @s Motion[0] double .001 run scoreboard players get #X tf.value
execute store result entity @s Motion[1] double .001 run scoreboard players get #Y tf.value
execute store result entity @s Motion[2] double .001 run scoreboard players get #Z tf.value

tag @s remove tf.setMotion
