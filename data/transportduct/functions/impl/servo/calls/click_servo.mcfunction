# @public
tag @e[tag=transportduct.selected] remove transportduct.selected

advancement revoke @s only transportduct:click_servo
tag @s add transportduct.looker
execute as @e[type=glow_item_frame,sort=nearest,predicate=!transportduct:not_rotated,distance=..7,tag=transportduct.servo] at @s run function transportduct:impl/servo/calls/click_servo_2
tag @s remove transportduct.looker





execute if items entity @s weapon.mainhand *[minecraft:custom_data~{ctc:{id:"wrench",from:"airdox_:transportduct"}}] unless predicate transportduct:sneaking as @e[tag=transportduct.selected] run function transportduct:impl/servo/change_io
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{ctc:{id:"wrench",from:"airdox_:transportduct"}}] if predicate transportduct:sneaking run function transportduct:impl/servo/display_filters

execute if items entity @s weapon.mainhand *[minecraft:custom_data~{ctc:{id:"id_filter",from:"airdox_:transportduct"}}] unless predicate transportduct:sneaking run function transportduct:impl/servo/apply_filter

tag @e[tag=transportduct.selected] remove transportduct.selected
