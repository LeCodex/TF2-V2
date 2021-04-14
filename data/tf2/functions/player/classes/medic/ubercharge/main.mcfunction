# Drain and deactivation
scoreboard players remove @s tf.ubercharge 62500
execute if score @s tf.ubercharge matches ..0 run function tf2:player/classes/medic/ubercharge/deactivate
scoreboard players set @s[scores={tf.ubercharge=..-1}] tf.ubercharge 0


# Effect
execute if data entity @s {SelectedItem:{tag:{tfTags:{flags:["tf.medigun"]}}}} run function tf2:player/classes/medic/ubercharge/self_effect


# Sound
scoreboard players operation #sound tf.value = @s tf.plyTimer
scoreboard players operation #sound tf.value %= #20 tf.value
execute if score #sound tf.value matches 0 run playsound minecraft:block.beacon.ambient player @a ~ ~1 ~ 10 1

execute unless data entity @s {SelectedItem:{tag:{tfTags:{flags:["tf.medigun"]}}}} unless data entity @s {Inventory:[{Slot:-106b}]} run stopsound @a[distance=..3] player minecraft:block.beacon.ambient
