# effect give @s instant_damage 1 0 true

# Damage
scoreboard players operation @s tf.health -= #damage tf.value


# Visual and Sound
playsound minecraft:entity.player.hurt player @a ~ ~ ~ 2 1
particle dust 1 0 0 .3 ~ ~1 ~ .25 .5 .25 .01 100

scoreboard players operation #indicator tf.value = #damage tf.value
scoreboard players operation #indicator tf.value /= #100 tf.value
scoreboard players operation #indicator tf.value *= #-1 tf.value
function tf2:player/health/damage_indicator


# Death
execute if score @s tf.health matches ..0 run function tf2:player/health/death


# Time since damage
scoreboard players set @s tf.timeSinceDmg 0


# scoreboard players set #flinch tf.value 800
# scoreboard players operation #flinch tf.value *= #damage tf.value
# scoreboard players operation #flinch tf.value /= #100 tf.value
# scoreboard players operation @s tf.rclRcvry = #flinch tf.value
# function tf2:player/health/flinch
