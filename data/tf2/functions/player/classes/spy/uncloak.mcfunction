execute if entity @s[tag=tf.cloaked] run playsound minecraft:block.fire.extinguish player @a ~ ~ ~ .05 .5
scoreboard players set @s[scores={tf.cloak=..0}] tf.cloak 0
tag @s remove tf.cloaked
