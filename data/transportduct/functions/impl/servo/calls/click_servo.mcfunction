# @public
tag @e[tag=transportduct.selected] remove transportduct.selected

advancement revoke @s only transportduct:click_servo
tag @s add transportduct.looker
execute as @e[type=glow_item_frame,sort=nearest,predicate=!transportduct:not_rotated,distance=..7,tag=transportduct.servo] at @s run function transportduct:impl/servo/calls/click_servo_2
tag @s remove transportduct.looker





execute if predicate transportduct:holding_wrench unless predicate transportduct:sneaking as @e[tag=transportduct.selected] run function transportduct:impl/servo/change_io
execute if predicate transportduct:holding_wrench if predicate transportduct:sneaking run function transportduct:impl/servo/display_filters

execute if predicate transportduct:holding_id_filter unless predicate transportduct:sneaking run function transportduct:impl/servo/apply_filter

tag @e[tag=transportduct.selected] remove transportduct.selected
