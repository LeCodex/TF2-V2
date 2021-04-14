execute if score @s tf.blink matches 0 run summon armor_stand ~ ~ ~ {Tags:["tf.disguise.smoke","tf.setID"],Invisible:true,Marker:true,NoGravity:true}
playsound block.fire.extinguish player @s ~ ~ ~ 2 .5
scoreboard players set @s tf.disguiseChce 0
