scoreboard players operation @a[sort=arbitrary,limit=1,scores={tf.ID=0}] tf.ID = #count tf.value
scoreboard players add #count tf.value 1
execute if entity @a[scores={tf.ID=0}] run function tf2:set_player_ids
