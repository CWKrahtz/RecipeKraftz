//
//  RecipeKraftzApp.swift
//  RecipeKraftz
//
//  Created by student on 2023/10/15.
//

import SwiftUI

@main
struct RecipeKraftzApp: App {
    
    @AppStorage("isOnboarded") var isOnboarded: Bool = false
    
    
    var body: some Scene {
        WindowGroup {
//            ContentView()
//            RecipeScreen()
            if(isOnboarded){
                SplashScreenView() //If the user have seen the onboarding before
//                ListScreen()
            }else{
//                OnboardingScreen()//If the user has not seen the onboarding before.
                SplashScreenView()
            }
        }
    }
}
