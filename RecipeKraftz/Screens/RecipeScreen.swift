//
//  RecipeScreen.swift
//  RecipeKraftz
//
//  Created by student on 2023/10/15.
//

import SwiftUI

struct RecipeScreen: View {
    
    var recipe: Recipe = dummyRecipe
    
    var body: some View {
        VStack{
            Text(recipe.name)
                .font(.title)
            Text(recipe.author)
                .font(.title2)
            
            Spacer()
            
            ScrollView(.vertical) {
                Text("Description")
                Text(recipe.description)
            }
            .frame(height: 100)
            .padding()
            
            Spacer()
            
            TabView {
                ScrollView(.vertical) {
                    Text("Ingredients:")
                        .font(.title3)
                    Text(recipe.ingredients)
                        .padding(.vertical)
                }
                .padding()
                ScrollView(.vertical) {
                    Text("Steps:")
                        .font(.title3)
                    Text(recipe.steps)
                        .padding(.vertical)
                }
                .padding()
            }
            .frame(height: 150)
            .background(.gray)
            .padding()
            .cornerRadius(15)
            .tabViewStyle(.page)// This style makes the content a carousel
        }
    }
}

struct RecipeScreen_Previews: PreviewProvider {
    static var previews: some View {
        RecipeScreen()
    }
}
