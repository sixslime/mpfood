#> mpfood:_/xtem/register
#--------------------
# @hook : xtem:register
#--------------------

execute if items entity @s container.0 *[minecraft:custom_data~{_:true}] run return fail

function mpfood:_/xtem/register.1 with entity @s item
execute unless data storage mpfood:var register.food run return fail

data modify storage mpfood:var register.item set from entity @s item

execute store result storage mpfood:var register.item.components."minecraft:consumable".consume_seconds float 0.05 run data get storage mpfood:var register.food.food_stats.eat_duration
data modify storage mpfood:var register.item.components."minecraft:consumable".on_consume_effects append from storage mpfood:var register.food.on_consume_effects[]

data modify storage mpfood:var register.item.components."minecraft:food".nutrition set from storage mpfood:var register.food.food_stats.nutrition
data modify storage mpfood:var register.item.components."minecraft:food".saturation set from storage mpfood:var register.food.food_stats.saturation


data modify entity @s item.components set from storage mpfood:var register.item.components

data remove storage mpfood:var register