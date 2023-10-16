//
//  ContentView.swift
//  RecipeKraftz
//
//  Created by student on 2023/10/15.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color.accentColor
                .ignoresSafeArea()
            Text("ContentView")
                .foregroundColor(.black)
                .font(.system(size: 30))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
