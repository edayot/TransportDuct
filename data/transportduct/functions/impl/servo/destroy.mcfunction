kill @e[limit=1,type=item,distance=..5,nbt={Age:0s,Item:{id:"minecraft:glow_item_frame"}}]

raw execute if items entity @s container.0 *[minecraft:custom_model_data=1430117] run loot spawn ~ ~ ~ loot transportduct:items/servo_insert
raw execute if items entity @s container.0 *[minecraft:custom_model_data=1430118] run loot spawn ~ ~ ~ loot transportduct:items/servo_insert
raw execute if items entity @s container.0 *[minecraft:custom_model_data=1430119] run loot spawn ~ ~ ~ loot transportduct:items/servo_extract
raw execute if items entity @s container.0 *[minecraft:custom_model_data=1430120] run loot spawn ~ ~ ~ loot transportduct:items/servo_extract



execute as @e[tag=transportduct.servo,distance=..5] unless data entity @s Item.count at @s run kill @s

kill @s