//
//  SplashScreenView.swift
//  RecipeKraftz
//
//  Created by student on 2023/10/16.
//

import SwiftUI

struct SplashScreenView: View {
    @State private var isActive = false
    @State private var size = 0.8
    @State private var opasity = 0.5
    
    var body: some View {
        if isActive{
//            ContentView()
            ListScreen()
//            OnboardingScreen()
        } else {
            ZStack{
                Color("backColor")
                    .ignoresSafeArea()
                VStack{
                    VStack{
                        Text("Welcome To")
                            .font(.system(size: 32))
                            .foregroundColor(.black.opacity(0.80))
                        Image("iOS icon")
                            .resizable()
                            .renderingMode(.original)
                            .aspectRatio(contentMode: .fit)
                            .frame(width:250, height: 250)
                    }
                    .scaleEffect(size)
                    .opacity(opasity)
                    .onAppear{
                        withAnimation(.easeIn(duration: 1.2)){
                            self.size = 0.9
                            self.opasity = 1.0
                        }
                    }
                }
                .onAppear {
                    DispatchQueue.main.asyncAfter(deadline:.now() + 1.5){
                        withAnimation {
                            self.isActive = true
                        }
                    }
                }
            }
        }
    }
}

struct SplashScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenView()
    }
}
