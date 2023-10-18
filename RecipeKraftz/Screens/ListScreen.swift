//
//  ListScreen.swift
//  RecipeKraftz
//
//  Created by student on 2023/10/18.
//

import SwiftUI

struct ListScreen: View {
    var body: some View {
        NavigationView{
            List {
                ForEach(IngredientsData) { recipe in
                    
                    NavigationLink(destination: RecipeScreen(recipe: recipe)){// Passing city as a param to the screen
                        Image(recipe.img)
                            .resizable()
                            .renderingMode(.original)
                            .aspectRatio(contentMode: .fit)
                            .cornerRadius(10)
                            .frame(width:100, height: 100)
                        
                        HStack{
                            VStack(alignment: .leading){
                                Text(recipe.name)
                                    .font(.title2)
                                Text(recipe.author)
                            }
                        }
                    }//End of navigationLink
                    
                }// End of For
            }// End of List
            .scrollContentBackground(.hidden)
            .background(Color.accentColor)
            
                .navigationTitle("All Recipes")//Inside navigationView
                .navigationBarTitleDisplayMode(.large)
        }
    }
}

struct ListScreen_Previews: PreviewProvider {
    static var previews: some View {
        ListScreen()
    }
}
