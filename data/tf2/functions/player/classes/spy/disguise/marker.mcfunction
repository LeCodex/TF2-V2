scoreboard players add @s tf.value 1

execute positioned as @a[tag=tf.current] run tp @s ~ ~1.9 ~
execute store result score #yPos tf.value run data get entity @s Pos[1] 10000
scoreboard players set #ySpeed tf.value 500
scoreboard players operation #ySpeed tf.value *= @s tf.value
scoreboard players operation #yPos tf.value -= #ySpeed tf.value
execute store result entity @s Pos[1] double .0001 run scoreboard players get #yPos tf.value

execute at @s run particle dust 1 1 1 1 ~ ~ ~ .25 .1 .25 .2 40 force @a[tag=!tf.current]
execute if entity @s[scores={tf.value=20..39}] at @a[tag=tf.current,team=tf.red] run particle dust 1 0 0 1 ~ ~1 ~ .25 .5 .25 .1 5 force @a[tag=!tf.current]
execute if entity @s[scores={tf.value=20..39}] at @a[tag=tf.current,team=tf.blu] run particle dust 0 1 1 1 ~ ~1 ~ .25 .5 .25 .1 5 force @a[tag=!tf.current]

kill @s[scores={tf.value=40..}]
