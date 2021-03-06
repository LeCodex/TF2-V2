# Start cooldown and remove one ammo in the clip
tag @s remove tf.reloading
tag @s remove tf.didFirstReload
scoreboard players remove @s tf.clip 1
scoreboard players operation @s tf.wait = @s tf.cooldown

item replace block 0 0 0 container.0 from entity @s weapon.mainhand

execute store result block 0 0 0 Items[{Slot:0b}].tag.tfTags.clip short 1 run scoreboard players get @s tf.clip

# Update the damage to represent ammo in the clip
scoreboard players set #ratio tf.value 25
scoreboard players operation #ratio tf.value *= @s tf.clip
scoreboard players operation #ratio tf.value /= @s tf.clipSize

scoreboard players set #dmg tf.value 25
scoreboard players operation #dmg tf.value -= #ratio tf.value
# scoreboard players remove #dmg tf.value 2

execute store result block 0 0 0 Items[{Slot:0b}].tag.Damage int 1 run scoreboard players get #dmg tf.value

item replace entity @s weapon.mainhand from block 0 0 0 container.0


# Sound
playsound minecraft:item.crossbow.shoot player @a ~ ~1 ~


# Undisguise
execute if score @s tf.disguise matches 1.. run function tf2:player/classes/spy/undisguise


# Shoot
execute if data entity @s {SelectedItem:{tag:{tfTags:{flags:["tf.hitscan"]}}}} anchored eyes positioned ^ ^ ^ run function tf2:weapon/hitscan/shoot
execute if data entity @s {SelectedItem:{tag:{tfTags:{flags:["tf.projectile"]}}}} run function tf2:weapon/projectile/shoot
