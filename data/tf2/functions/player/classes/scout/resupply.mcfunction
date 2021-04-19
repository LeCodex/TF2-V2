attribute @s generic.movement_speed base set 0.1778
scoreboard players set @s tf.maxHealth 12500

clear @a
# angles:[[0.0,0.0],[0.0,0.0],[1.0,0.0],[-1.0,0.0],[0.0,1.0],[0.0,-1.0],[1.0,1.0],[-1.0,1.0],[1.0,-1.0],[-1.0,-1.0]]
give @s carrot_on_a_stick{tfTags:{flags:["tf.hitscan","tf.weapon","tf.spread.shotgun"],clip:6,clipSize:6,ammo:32,maxAmmo:32,reload:{first:16,consecutive:12},cooldown:12,damage:60,deploy:12}}
give @s carrot_on_a_stick{tfTags:{flags:["tf.hitscan","tf.weapon","tf.clipReload","tf.spread.center"],clip:12,clipSize:12,ammo:36,maxAmmo:36,reload:{first:24,consecutive:24},cooldown:4,damage:15,deploy:12}}
