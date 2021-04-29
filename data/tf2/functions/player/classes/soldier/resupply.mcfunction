attribute @s generic.movement_speed base set 0.1070
scoreboard players set @s tf.maxHealth 20000

clear @s
give @s carrot_on_a_stick{tfTags:{flags:["tf.projectile","tf.weapon"],projectileTags:["tf.projectile.noGravity","tf.projectile.explosive"],projectileItem:"minecraft:tnt",clip:4,clipSize:4,ammo:20,maxAmmo:20,reload:{first:20,consecutive:18},cooldown:18,damage:90,deploy:12}}
give @s carrot_on_a_stick{tfTags:{flags:["tf.hitscan","tf.weapon","tf.spread.shotgun"],clip:6,clipSize:6,ammo:32,maxAmmo:32,reload:{first:16,consecutive:12},cooldown:12,damage:60,deploy:12}}
