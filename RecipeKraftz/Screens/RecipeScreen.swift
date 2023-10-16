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
        ZStack{
            Color.accentColor
                .ignoresSafeArea()
            
            VStack{
                Text(recipe.name)
                    .font(.title)
                Text(recipe.author)
                    .font(.title2)
                
                //Image Area
                Spacer()
                
                ScrollView(.vertical) {
                    VStack(alignment: .leading){
                        Text("Description")
                            .font(.title3)
                            .bold()
                        Text(recipe.description)
                            .padding(.vertical)
                    }
                }
                .frame(height: 150)
                .padding()
                
                TabView {
                    ScrollView(.vertical) {
                        VStack(alignment: .leading){
                            HStack{
                                Image("ingredient")
                                    .resizable()
                                    .renderingMode(.original)
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width:32, height: 32)
                                
                                Text("Ingredients:")
                                    .font(.title3)
                                    .bold()
                            }
                            Text(recipe.ingredients)
                                .padding(.vertical)
                        }
                    }
                    .padding()
                    .background(Color("IngreColor"))
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    
                    ScrollView(.vertical) {
                        VStack(alignment: .leading){
                            HStack{
                                Image("instructions")
                                    .resizable()
                                    .renderingMode(.original)
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width:32, height: 32)
                                
                                Text("Steps:")
                                    .font(.title2)
                                    .bold()
                            }
                            Text(recipe.steps)
                                .padding(.vertical)
                        }
                    }
                    .padding()
                    .background(Color("StepColor"))
                    .foregroundColor(.white)
                    .cornerRadius(10)
                }
                .padding()
                .frame(height: 250)
                .cornerRadius(15)
                .tabViewStyle(.page)// This style makes the content a carousel
                
            }
        }
    }
}

struct RecipeScreen_Previews: PreviewProvider {
    static var previews: some View {
        RecipeScreen()
    }
}
