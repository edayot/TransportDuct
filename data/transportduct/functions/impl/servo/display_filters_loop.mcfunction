tellraw @s {"nbt":"temp.filters[0]","storage":"transportduct:main","color":"green"}
data remove storage transportduct:main temp.filters[0]
execute if data storage transportduct:main temp.filters[0] run function transportduct:impl/servo/display_filters_loop
