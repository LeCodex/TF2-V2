# CRIT!
execute if entity @s[tag=tf.crit] run function tf2:weapon/crit
tag @s remove tf.crit


# Damage calculation
execute store result score #damage tf.value run data get entity @p[tag=tf.shooter] SelectedItem.tag.tfTags.damage

# Falloff/Rampup, only if it's not a crit
execute unless entity @s[tag=tf.crit] run function tf2:weapon/falloff
## No division by 100 since the health is multiplied by 100 and the damage stat isn't


function tf2:player/health/damage
