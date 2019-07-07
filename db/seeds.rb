# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Food.destroy_all
User.destroy_all
Ingredient.destroy_all
UserIngredient.destroy_all

endy = User.create(username: "Endy", password: "endy", email: "endy@email.com" )
fran = User.create(username: "Fran", password: "fran", email: "fran@email.com")
harriet = User.create(username: "Harriet", password: "harriet", email: "harriet@email.com")

ing1= Ingredient.create(name: "pasta")
ing2= Ingredient.create(name: "rice")
ing3= Ingredient.create(name: "flour")

userIng1= UserIngredient.create(user_id: endy.id, ingredient_id: ing1.id )
userIng2= UserIngredient.create(user_id: fran.id, ingredient_id: ing2.id )
userIng3= UserIngredient.create(user_id: harriet.id, ingredient_id: ing3.id )

# foods = [
#   {name: "apple"},
#   {name: "apricot"},
#   {name: "asparagus"},
#   {name: "aubergine"},
#   {name: "banana"},
#   {name: "basil"},
#   {name: "beef"},
#   {name: "beetroot"},
#   {name: "blackberry"},
#   {name: "blackcurrants"},
#   {name: "bramley apple"},
#   {name: "broad bean"},
#   {name: "broccoli"}, 
#   {name: "brussels sprouts"}, 
#   {name: "cabbage"},
#   {name: "carrot"},
#   {name: "cauliflower"},
#   {name: "cavolo nero"},
#   {name: "celeriac"},
#   {name: "celery"},
#   {name: "cherry"},
#   {name: "chervil"},
#   {name: "chestnut"},
#   {name: "chicken"},
#   {name: "chicory"},
#   {name: "clementine"},
#   {name: "cod"},
#   {name: "courgette"},
#   {name: "courgette flower"},
#   {name: "crab"},
#   {name: "crab apple"},
#   {name: "cranberry"},
#   {name: "damson"},
#   {name: "date"},
#   {name: "duck"},
#   {name: "elderberries"},
#   {name: "fennel"},
#   {name: "fig"},
#   {name: "garlic"},
#   {name: "globe artichoke"},
#   {name: "goose"},
#   {name: "gooseberry"},
#   {name: "grapefruit"},
#   {name: "grouse"},
#   {name: "guinea fowl"},
#   {name: "halibut"},
#   {name: "jerusalem artichoke"},
#   {name: "kale"},
#   {name: "kipper"},
#   {name: "kohlrabi"},
#   {name: "lamb"},
#   {name: "leek"},
#   {name: "lemon"},
#   {name: "lettuce"},
#   {name: "loganberry"},
#   {name: "mackerel"},
#   {name: "mangetout"},
#   {name: "marrow"},
#   {name: "mint"},
#   {name: "mussels"},
#   {name: "nectarine"},
#   {name: "new potatoes"},
#   {name: "noodles"},
#   {name: "onion"},
#   {name: "orange"},
#   {name: "oyster"},
#   {name: "pak choi"},
#   {name: "parsnip"},
#   {name: "pasta"},
#   {name: "peach"},
#   {name: "pear"},
#   {name: "peas"},
#   {name: "pepper"},
#   {name: "plum"},
#   {name: "pomegranate"},
#   {name: "pork"},
#   {name: "potato"},
#   {name: "pumpkin"},
#   {name: "purple sprouting broccoli"},
#   {name: "quince"},
#   {name: "radicchio"},
#   {name: "radish"},
#   {name: "raspberry"},
#   {name: "redcurrant"},
#   {name: "rice"},
#   {name: "rhubarb"},
#   {name: "runner bean"},
#   {name: "salmon"},
#   {name: "salsify"},
#   {name: "samphire"},
#   {name: "sorrel"},
#   {name: "soup"},
#   {name: "spaghetti"},
#   {name: "spinach"},
#   {name: "spring greens"},
#   {name: "spring onion"},
#   {name: "strawberry"},
#   {name: "sushi"},
#   {name: "swede"},
#   {name: "sweet potato"},
#   {name: "sweetcorn"},
#   {name: "swiss chard"},
#   {name: "tayberry"},
#   {name: "tomato"},
#   {name: "tuna"},
#   {name: "turkey"},
#   {name: "turnip"}
#   {name: "venison"},
#   {name: "watercress"},
#   {name: "watermelon"}
#   {name: "whiting"}
# ]