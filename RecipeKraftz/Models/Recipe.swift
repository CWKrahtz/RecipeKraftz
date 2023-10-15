//
//  Recipe.swift
//  RecipeKraftz
//
//  Created by student on 2023/10/15.
//

import Foundation

struct Recipe: Identifiable{
    var id = UUID() //unique id for each city that is autogenorated
    var name: String
    var author: String
    var description: String
    var ingredients: String
    var steps: String
}

let dummyRecipe: Recipe = Recipe(
    name: "Crème Brulee",
    author: "Rene Du Toit",
    description: "It is a classic French dessert that consists of a rich and creamy custard base, typically flavored with vanilla, and a crisp caramelized sugar crust on top. To create this dessert, sugar is sprinkled on the custard's surface and caramelized using a kitchen torch or broiler, resulting in a contrasting texture of creamy and smooth custard beneath a brittle and slightly burnt sugar shell. The dessert is typically served in individual ramekins and is known for its luxurious, silky texture and a delightful combination of flavors. It's a beloved dessert enjoyed for its elegant simplicity and delicious taste",
    ingredients: "1 Liter Cream. 120 gram White Chocolate. 200 gram Cater Suger. 13 Egg Yolks. White/Brown Suger (own preference)",
    steps: "Melt chocolate, sugar, and cream together. When blended let cool to room temperature then mix in egg yolks. Strain mixture. Pour into cups/rumekins. Place in bakiing dish with boiling water. Cover with foil. Bake at 150ºC for 40-45 min. Let it col down. Put in fridge overnight or until you are happy with consitency. Pour over desired amout of suger and carmelise suger till satisfied")
