//
//  OnboardingCardView.swift
//  RecipeKraftz
//
//  Created by student on 2023/10/29.
//

import SwiftUI

struct OnboardingCardView: View {
    @Environment(\.colorScheme) var colorScheme
    
    var title: String
    var description: String
    var icon: String
    
    var body: some View {
        VStack (alignment: .center){
            Text(title)
                .font(.title)
                .padding(.vertical)
                .bold()
            
            Image(icon)
                .resizable()
                .scaledToFit()
                .symbolRenderingMode(.palette)
                .foregroundStyle(.white, .yellow)
//                .font(.system(size: 100))
                .frame(width: 140, height: 140)
            
            Text(description)
                .multilineTextAlignment(.center) //Research - align multiple lines
                .font(.title3)
                .padding()
        }
//        .frame(maxWidth: .infinity)
        .frame(width: 350, height: 450)
        .background(Color("IngreColor"))
        .foregroundColor(.white)
        .cornerRadius(20)
    }
}

struct OnboardingCardView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingCardView(title: "Welcome", description: "Welcome to cloudcast, the best weather app you can find.", icon: "cloud.sun")
    }
}
