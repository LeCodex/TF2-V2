item replace block 0 0 0 container.0 from entity @s weapon.mainhand

scoreboard players set #amount tf.value 1
execute if data entity @s {SelectedItem:{tag:{tfTags:{flags:["tf.clipReload"]}}}} run scoreboard players operation #amount tf.value = @s tf.clipSize
execute if data entity @s {SelectedItem:{tag:{tfTags:{flags:["tf.clipReload"]}}}} run scoreboard players operation #amount tf.value -= @s tf.clip
execute if score #amount tf.value > @s tf.ammo run scoreboard players operation #amount tf.value = @s tf.ammo

scoreboard players operation @s tf.clip += #amount tf.value
scoreboard players operation @s tf.ammo -= #amount tf.value

scoreboard players set #ratio tf.value 25
scoreboard players operation #ratio tf.value *= @s tf.clip
scoreboard players operation #ratio tf.value /= @s tf.clipSize

scoreboard players set #dmg tf.value 25
scoreboard players operation #dmg tf.value -= #ratio tf.value
# scoreboard players remove #dmg tf.value 2

execute store result block 0 0 0 Items[{Slot:0b}].tag.tfTags.clip int 1 run scoreboard players get @s tf.clip
execute store result block 0 0 0 Items[{Slot:0b}].tag.tfTags.ammo int 1 run scoreboard players get @s tf.ammo
execute store result block 0 0 0 Items[{Slot:0b}].tag.Damage int 1 run scoreboard players get #dmg tf.value

playsound minecraft:item.crossbow.loading_end player @a ~ ~1 ~
tag @s remove tf.reloading
execute if score @s tf.clip = @s tf.clipSize run tag @s remove tf.didFirstReload

item replace entity @s weapon.mainhand from block 0 0 0 container.0
