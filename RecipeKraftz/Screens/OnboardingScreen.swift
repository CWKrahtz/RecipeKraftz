//
//  OnboardingScreen.swift
//  RecipeKraftz
//
//  Created by student on 2023/10/29.
//

import SwiftUI

struct OnboardingScreen: View {
    
    @Environment(\.colorScheme) var colorScheme
    @AppStorage("isOnboarded") var isOnboarded: Bool = true
    
    var body: some View {
        ZStack{
            Color("backColor")
                .ignoresSafeArea()
            
            VStack{
                TabView {
                    VStack (alignment: .center){
                        Text("Welcome")
                            .font(.title)
                            .padding(.vertical)
                            .bold()
                        
                        Image("iOS icon")
                            .resizable()
                            .scaledToFit()
                            .symbolRenderingMode(.palette)
                            .foregroundStyle(.white, .yellow)
            //                .font(.system(size: 100))
                            .frame(width: 200)
                        
                        Text("Welcome to Recipe Kraftz, the best storage space for your recipies.")
                            .multilineTextAlignment(.center) //Research - align multiple lines
                            .font(.title3)
                            .padding()
                    }
            //        .frame(maxWidth: .infinity)
                    .frame(width: 350, height: 450)
                    .background(Color("IngreColor"))
                    .foregroundColor(.white)
                    .cornerRadius(20)
                    
                    OnboardingCardView(title: "Search", description: "Find the best recipe with a touch of a button. Simply search the title and it will filer the recipies for you. jUst sit back and cook", icon: "instructions")
                        .padding()
                    
                    OnboardingCardView(title: "Recipies", description: "All recipies have Steps, Ingridients, and a description on the dish for more information", icon: "ingredient")
                        .padding()
                }
                .tabViewStyle(.page(indexDisplayMode: .always))
                
                Button(action: {
                    //TODO: Update @appStorage
                    isOnboarded.toggle()
                }){
                    HStack {
                        Text("Continue")
                            .padding()
                            .foregroundColor(colorScheme == .light ? .white : .black)
                        Spacer()
                        Image(systemName: "arrow.right.circle.fill")
                            .padding()
                            .foregroundColor(colorScheme == .light ? .white : .black)
                    }// END - HStack
                }
                .buttonStyle(.borderedProminent)
                .padding()
                
            }//END - outer VStack
        }//END - outer ZStack
        
    }
}

struct OnboardingScreen_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingScreen()
    }
}
