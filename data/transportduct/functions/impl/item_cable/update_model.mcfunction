
scoreboard players set #model transportduct.math 1430300

scoreboard players operation #model transportduct.math += @s itemio.math
execute store result entity @s item.tag.CustomModelData int 1 run scoreboard players get #model transportduct.math