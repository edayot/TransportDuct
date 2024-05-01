
execute as @a[tag=convention.debug] run function transportduct:impl/print_version
advancement revoke @a only transportduct:click_servo

#Item cable
data modify storage transportduct:main ItemsNBT.item_cable set value {id:"minecraft:furnace",count:1, components:{"minecraft:custom_name":"{\"translate\":\"transportduct.item_cable\",\"color\":\"white\",\"italic\":false}","minecraft:custom_model_data":1430116,"minecraft:container":[{slot:0,item:{id:"minecraft:stone",components:{"minecraft:custom_data":{smithed:{block:{id:"transportduct:item_cable"}}}}}}],"minecraft:custom_data":{ctc:{id:"item_cable",from:"airdox_:transportduct",traits:{block:1b,cable:1b}}}}}

data modify storage transportduct:main ItemsNBT.servo_insert set value {id:"minecraft:glow_item_frame",count:1, components:{"minecraft:custom_name":"{\"translate\":\"transportduct.servo_insert\",\"color\":\"white\",\"italic\":false}","minecraft:custom_model_data":1430117,"minecraft:entity_data":{Invulnerable:0b,Invisible:1b,Fixed:0b,Silent:1b,Tags:["transportduct.summoned","transportduct.servo","itemio.servo.insert"],Item:{id:"minecraft:furnace",count:1,tag:{CustomModelData:1430117}}},"minecraft:custom_data":{ctc:{id:"servo_insert",from:"airdox_:transportduct",traits:{item:1b,servo:1b,"metal/copper":1b}}}}}

data modify storage transportduct:main ItemsNBT.servo_extract set value {id:"minecraft:glow_item_frame",count:1,components:{"minecraft:custom_name":"{\"translate\":\"transportduct.servo_extract\",\"color\":\"white\",\"italic\":false}","minecraft:custom_model_data":1430119,"minecraft:entity_data":{Invulnerable:0b,Invisible:1b,Fixed:0b,Silent:1b,Tags:["transportduct.summoned","transportduct.servo","itemio.servo.extract"],Item:{id:"minecraft:furnace",count:1,tag:{CustomModelData:1430119}}},"minecraft:custom_data":{ctc:{id:"servo_extract",from:"airdox_:transportduct",traits:{item:1b,servo:1b,"metal/copper":1b}}}}}


#Wrench
data modify storage transportduct:main ItemsNBT.wrench set value {id:"minecraft:warped_fungus_on_a_stick",count:1,components:{"minecraft:custom_name":"{\"translate\":\"transportduct.wrench\",\"color\":\"white\",\"italic\":false}","minecraft:lore":["{\"translate\":\"transportduct.name\",\"color\":\"blue\",\"italic\":false}"],"minecraft:custom_model_data":1430117,"minecraft:custom_data":{ctc:{id:"wrench",from:"airdox_:transportduct",traits:{item:1b}}}}}

#ID Filter
data modify storage transportduct:main ItemsNBT.id_filter set value {id:"minecraft:jigsaw",count:1,components:{"minecraft:custom_name":"{\"translate\":\"transportduct.id_filter\",\"color\":\"white\",\"italic\":false}","minecraft:lore":["{\"translate\":\"transportduct.name\",\"color\":\"blue\",\"italic\":false}"],"minecraft:custom_model_data":1430121,"minecraft:custom_data":{ctc:{id:"id_filter",from:"airdox_:transportduct",traits:{item:1b}},transportduct:{}}}}



scoreboard objectives add transportduct.math dummy

schedule function transportduct:impl/tick 1t replace
schedule function transportduct:impl/8tick 8t replace
