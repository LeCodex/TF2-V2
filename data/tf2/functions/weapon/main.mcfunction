# Reload
execute if score @s tf.shoot matches 0 if score @s tf.wait matches ..0 run function tf2:weapon/reload/main


# Shoot
tag @s[scores={tf.wait=..0}] add tf.canShoot
tag @s[tag=tf.reloading] add tf.canShoot
tag @s[scores={tf.clip=..0}] remove tf.canShoot
execute if score @s tf.shoot matches 1.. if entity @s[tag=tf.canShoot] run function tf2:weapon/shoot
tag @s remove tf.canShoot


# Display
data merge storage tf:ui {TextAmmo:'{"text":"/","extra":[{"score":{"name":"@s","objective":"tf.ammo"}}]}'}
execute if score @s tf.ammo matches -1 run data merge storage tf:ui {TextAmmo:'{"text":""}'}

data merge storage tf:ui {Text2:'{"text":" | ","extra":[{"text":"Ammo: ","bold":true},{"score":{"name":"@s","objective":"tf.clip"}},{"storage":"tf:ui","nbt":"TextAmmo","interpret":true}]}'}
execute if score @s tf.wait matches 1.. run data merge storage tf:ui {Text2:'{"text":" | ","extra":[{"text":"Ammo: ","bold":true,"color":"yellow"},{"score":{"name":"@s","objective":"tf.clip"}},{"storage":"tf:ui","nbt":"TextAmmo","interpret":true}]}'}
execute if entity @s[tag=tf.reloading] run data merge storage tf:ui {Text2:'{"text":" | ","extra":[{"text":"Ammo: ","bold":true,"color":"gold"},{"score":{"name":"@s","objective":"tf.clip"}},{"storage":"tf:ui","nbt":"TextAmmo","interpret":true}]}'}
