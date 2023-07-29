


execute as @e[tag=transportduct.animation] at @s run function transportduct:impl/animation/8tick
execute as @e[tag=transportduct.animation_servos] at @s run function transportduct:impl/animation_servos/8tick





schedule function transportduct:impl/8tick 20t replace