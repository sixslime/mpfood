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

# N = nutrition
# CRAFTED MEALS
# saturation = N * 2
# duration = (N * 7) + 5
data modify storage mpfood:var foodgroup.meals append value {item:"minecraft:rabbit_stew"}
data modify storage mpfood:var foodgroup.meals[-1].food_stats set value {nutrition:10, saturation:20, eat_duration:75}
data modify storage mpfood:var foodgroup.meals append value {item:"minecraft:mushroom_stew"}
data modify storage mpfood:var foodgroup.meals[-1].food_stats set value {nutrition:7, saturation:14, eat_duration:54}
data modify storage mpfood:var foodgroup.meals append value {item:"minecraft:beetroot_soup"}
data modify storage mpfood:var foodgroup.meals[-1].food_stats set value {nutrition:5, saturation:10, eat_duration:40}
data modify storage mpfood:var foodgroup.meals[].stack_size set value 16
data modify storage mpfood:settings items append from storage mpfood:var foodgroup.meals[]

# COOKED MEAT
# saturation = (N * 2) - 2 ish
# duration = (N * 10) + 5 ish
data modify storage mpfood:var foodgroup.cooked_meats append value {item:"minecraft:cooked_porkchop"}
data modify storage mpfood:var foodgroup.cooked_meats[-1].food_stats set value {nutrition:9, saturation:16, eat_duration:95}
data modify storage mpfood:var foodgroup.cooked_meats append value {item:"minecraft:cooked_beef"}
data modify storage mpfood:var foodgroup.cooked_meats[-1].food_stats set value {nutrition:8, saturation:14, eat_duration:85}
data modify storage mpfood:var foodgroup.cooked_meats append value {item:"minecraft:cooked_chicken"}
data modify storage mpfood:var foodgroup.cooked_meats[-1].food_stats set value {nutrition:6, saturation:10, eat_duration:65}
data modify storage mpfood:var foodgroup.cooked_meats append value {item:"minecraft:cooked_rabbit"}
data modify storage mpfood:var foodgroup.cooked_meats[-1].food_stats set value {nutrition:5, saturation:9, eat_duration:50}
data modify storage mpfood:var foodgroup.cooked_meats append value {item:"minecraft:cooked_mutton"}
data modify storage mpfood:var foodgroup.cooked_meats[-1].food_stats set value {nutrition:5, saturation:9, eat_duration:55}
data modify storage mpfood:var foodgroup.cooked_meats append value {item:"minecraft:cooked_cod"}
data modify storage mpfood:var foodgroup.cooked_meats[-1].food_stats set value {nutrition:4, saturation:8, eat_duration:55}
data modify storage mpfood:var foodgroup.cooked_meats append value {item:"minecraft:cooked_salmon"}
data modify storage mpfood:var foodgroup.cooked_meats[-1].food_stats set value {nutrition:5, saturation:7, eat_duration:55}
data modify storage mpfood:var foodgroup.cooked_meats[].stack_size set value 32
data modify storage mpfood:settings items append from storage mpfood:var foodgroup.cooked_meats[]

#data modify storage mpfood:settings items[-1].on_consume_effects append value {type:"apply_effects",effects:[{id:"minecraft:speed",amplifier:0, duration:200}]}


data modify storage mpfood:settings items[].on_consume_effects[{type:"apply_effects"}].effects[].ambient set value true

data remove storage mpfood:var foodgroup