scoreboard players set @s tf.dmgGlobal 0
execute if entity @s[team=tf.blu] run particle dust 0 1 1 .5 ~ ~.7 ~ .25 .33 .25 .01 100
execute if entity @s[team=tf.red] run particle dust 1 0 0 .5 ~ ~.7 ~ .25 .33 .25 .01 100
