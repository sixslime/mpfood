#>mpfood:settings

#declare storage mpfood:settings
data modify storage mpfood:settings PERSIST set value false

#>-------------------
#> setting : 
#-------------------
# ~ 
#-------------------
# - 
#-------------------
## data modify storage mpfood:settings setting set value 0
#>-------------------

data modify storage mpfood:settings items set value []
data modify storage mpfood:settings items append value {item:"minecraft:melon_slice", food_stats:{nutrition:1, saturation:2, eat_duration:20}, on_consume_effects:[{type:"apply_effects",effects:[{id:"minecraft:speed",amplifier:0, duration:100}]}]}
