execute store result score world Point_Shop_Rolled run random value 1..100

# Day 0-19 (Early Game)

# Roll 1 (Weapons & Loot Chests) 20%
execute if score world Day matches 0..10 if score world Point_Shop_Rolled matches 1..20 run function kiwi2:point_shop/day_0_19/day_0_10/1-20
# After Intermission Day, it now sells Dreadfang
execute if score world Day matches 11..19 if score world Point_Shop_Rolled matches 1..20 run function kiwi2:point_shop/day_0_19/day_11_19/1-20

# Roll 2 (Foods & Potions & Border Upgrade) 40%
execute if score world Day matches 0..19 if score world Point_Shop_Rolled matches 21..60 run function kiwi2:point_shop/day_0_19/21-60

# Roll 3 (Armour & Materials | Netherite Helmet) 8%
execute if score world Day matches 0..19 if score world Point_Shop_Rolled matches 61..68 run function kiwi2:point_shop/day_0_19/61-68

# Roll 4 (Armour & Materials | Netherite Chestplate) 8%
execute if score world Day matches 0..19 if score world Point_Shop_Rolled matches 69..76 run function kiwi2:point_shop/day_0_19/69-76

# Roll 5 (Armour & Materials | Netherite Leggings) 8%
execute if score world Day matches 0..19 if score world Point_Shop_Rolled matches 77..84 run function kiwi2:point_shop/day_0_19/77-84

# Roll 6 (Armour & Materials | Netherite Boots) 8%
execute if score world Day matches 0..19 if score world Point_Shop_Rolled matches 85..92 run function kiwi2:point_shop/day_0_19/85-92

# Roll 7 (Custom Enchanted Books) 8%
execute if score world Day matches 0..19 if score world Point_Shop_Rolled matches 93..100 run function kiwi2:point_shop/day_0_19/93-100

# Day 20-39 (Early-Mid Game)

# Roll 1 (Set Weapons & Helpful Stuff & Border Upgrade 2) 50%
# Coldsteel Blade (60P)
# Firesteel Axe (60P)
# Bulwark Shield (15P)
# Unbreaking 4 (12P)
# Netherite Scrap (8P)
# Health Boost Potion (10P)
# Splash Healing Potion (5P)
# 2 Golden Apples (7P)
# Totem of Undying (10P)
# Border Upgrade II (25P)
# Border Upgrade III (35P) ---> Day 30-39
# Ars Magica Initiata (1 Soul in a Bottle + 1 Book) ---> Day 30-39
# Cinderstorm Rod (Cinderstorm Rod + Smoldering Sigil) ---> Day 30-39           (NOT ADDED YET)
execute if score world Day matches 20..26 if score world Point_Shop_Rolled matches 1..50 run function kiwi2:point_shop/day_20_39/day_20_26/1-50

execute if score world Day matches 27..39 if score world Point_Shop_Rolled matches 1..50 run function kiwi2:point_shop/day_20_39/day_27_39/1-50

# Roll 2 (Coldsteel Armor & Food) 20%
# Coldsteel Helmet (40P)
# Coldsteel Plate (40P)
# Coldsteel Greaves (40P)
# Coldsteel Boots (40P)
# 6 Golden Carrots (8P)
# Splash Swiftness Potion (6P)
# Pestilent Reaper
execute if score world Day matches 20..39 if score world Point_Shop_Rolled matches 51..70 run function kiwi2:point_shop/day_20_39/51-70

# Roll 3 (Firesteel Armor & Food) 20%
# Firesteel Helmet (40P)
# Firesteel Plate (40P)
# Firesteel Greaves (40P)
# Firesteel Boots (40P)
# 6 Golden Carrots (8P)
# Splash Strength Potion (9P)
# Insatiable Hunger
execute if score world Day matches 20..39 if score world Point_Shop_Rolled matches 71..90 run function kiwi2:point_shop/day_20_39/71-90

# Roll 4 (Coldsteel & Firesteel Set) 10%
# Coldsteel Helmet (35P)
# Coldsteel Plate (35P)
# Coldsteel Greaves (35P)
# Coldsteel Boots (35P)
# Firesteel Helmet (35P)
# Firesteel Plate (35P)
# Firesteel Greaves (35P)
# Firesteel Boots (35P)
# Lifesteel (20P)
# Insatiable Hunger
# Pestilent Reaper
execute if score world Day matches 20..39 if score world Point_Shop_Rolled matches 91..100 run function kiwi2:point_shop/day_20_39/91-100

# Day 40 - 50
# Roll 1 (Weapons, Relic, Border) 50%
# Golden Carrots & Golden Apples
# Abyssal Reaver
# Abyssal Edge
# The Stronghold
# 1 Bygone Bones = 1 Bygone Bone Meal
# Withered Millennium Sapling + 3 Bygone Bone Meal = Blossoming Millennium Sapling
# Border Upgrade IV (50P)
execute if score world Day matches 40..50 if score world Point_Shop_Rolled matches 1..50 run function kiwi2:point_shop/day_40_50/1-50

# Roll 2 (Spawn Eggs & Crystals) 30%
# Iron Golem Spawn Egg (1 Clump)
# Direwolf Spawn Egg (1 Clump)
# Absorption Crystal (1 Crystal + E-Gap)
# Slowness Crystal (1 Crystal + Turtle Egg)
# Wither Crystal (1 Crystal + Wither Rose)
execute if score world Day matches 40..50 if score world Point_Shop_Rolled matches 51..80 run function kiwi2:point_shop/day_40_50/51-80

# Roll 3 (Armor Sets & Dreadmaw) 20%
# Abyssium Set
# Eternium Set
# Dreadfang + 3 Bygone Bones = Dreadmaw
execute if score world Day matches 40..50 if score world Point_Shop_Rolled matches 81..100 run function kiwi2:point_shop/day_40_50/81-100
