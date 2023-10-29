//
//  ListScreen.swift
//  RecipeKraftz
//
//  Created by student on 2023/10/18.
//

import SwiftUI

struct ListScreen: View {
    @State var showSettings = false
    @State var searchText = ""//state var for searching our city list
    
    //function that update my list of cities to displays
    //1. Create new var called searchResult that will essentially contain my citydata
    //2. Set var equal to a function that contain an if statement
    var searchResult: [Recipe] {
        //if searchText is null. Show all data
        if (searchText.isEmpty){
            return IngredientsData
        }else{//return all the cities that contains the text of my searc
            return IngredientsData.filter{$0.name.contains(searchText)}
        }
    }
    
    var body: some View {
        NavigationView{
            List {
                ForEach(searchResult) { recipe in
                    
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
            .background(Color("backColor"))
            .navigationTitle("All Recipes")//Inside navigationView
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarItems(trailing: Button(action: {//NavBar Item
                //TODO: open setting
                showSettings.toggle()//toggle from true to false
            }){
                Image(systemName: "gearshape")
            })
        }
        .searchable(text: $searchText)
        .sheet(isPresented: $showSettings){
            SettingsScreen()
        }
    }
}

struct ListScreen_Previews: PreviewProvider {
    static var previews: some View {
        ListScreen()
    }
}
