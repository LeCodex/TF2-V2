execute if score @s tf.blink matches 0 run summon marker ~ ~ ~ {Tags:["tf.disguise.smoke","tf.setID"]}
playsound block.fire.extinguish player @s ~ ~ ~ 2 .5
scoreboard players set @s tf.disguiseChce 0
