attribute @s generic.movement_speed base set 0.1431
scoreboard players set @s tf.maxHealth 15000
scoreboard players set @s tf.regeneration 600

clear @s
give @s carrot_on_a_stick{tfTags:{flags:["tf.projectile","tf.weapon", "tf.clipReload"],clip:20,clipSize:20,ammo:150,maxAmmo:150,reload:{first:32,consecutive:32},cooldown:4,damage:20,deploy:12}}
give @s warped_fungus_on_a_stick{tfTags:{flags:["tf.medigun"]}}
