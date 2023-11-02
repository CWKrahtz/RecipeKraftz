//
//  SettingsScreen.swift
//  RecipeKraftz
//
//  Created by student on 2023/10/29.
//

import SwiftUI

struct SettingsScreen: View {
    //@Environment var = define the environment/context of our application
    @Environment(\.dismiss) var dismiss
    @Environment(\.colorScheme) var colorScheme //access device settings to toggle light/dark mode... NOT APP SPECIFICLLY - IT IS BASED ON THE IPHONE
    
    @AppStorage("displayMode") var displayMode = "primary"
    
    var body: some View {
        VStack(spacing: 20){
            //Header Section
            HStack{
                Text("Settings")
                    .font(.title)
                Spacer()
                Image(systemName: "xmark.circle.fill")
                    .font(.title2)
                    .onTapGesture {//On Click modifier == Button
                        dismiss()
                    }
            }
            
            GroupBox{
                HStack{
                    Text("Developecd by:")
                    Spacer()
                    Link("Christian Krahtz", destination: URL(string: "https://github.com/CWKrahtz/RecipeKraftz.git")!)
                        .bold()
                    Image(systemName: "link")
                }
                Divider()
                HStack{
                    Text("App Name:")
                    Spacer()
                    Text("Recipe Kraftz")
                        .bold()
                }
                Divider()
                HStack{
                    Text("Version:")
                    Spacer()
                    Text("1.0.0")
                        .bold()
                }
            }//END - GroupBox
            
            Divider().padding()
            
            GroupBox{
                DisclosureGroup("About this app"){
                    Text("This is Recipe Kraftz, a mobile application that keeps all your favourite recipies all in one place. This application was also made for my iOS intoduction subject at Open Window.")
                        .padding()
                        .bold(false)
                }
                .foregroundColor(colorScheme == .light ? .black : .white)
                .bold()
                
                Divider()
                
                DisclosureGroup("About Developer"){
                    Text("My name is Christian Krahtz, I am a second year student majoring in Development, doing iOS development for the fisrt time. I found it hard to manage my time for when to be on campus and when to work on the project. I usually work on campus over weekends to complete my project.")
                        .padding()
                        .bold(false)
                }
                .foregroundColor(colorScheme == .light ? .black : .white)
                .bold()
            }
        
            if (displayMode == "primary"){//If want to show something in dark mode
                Text("Color scheme is set to \(colorScheme == .dark ? "Dark" : "Light")")
            }
            GroupBox{
                Text("Display Mode")
                
                Picker("Mode", selection: $displayMode){
                    Text("Primary").tag("primary")
                    Text("Secondary").tag("secondary")
                }
                .pickerStyle(.segmented)
            }
        
            Spacer()
        }//END - Outer VStack
        .padding()
    }
}

struct SettingsScreen_Previews: PreviewProvider {
    static var previews: some View {
        SettingsScreen()
    }
}
