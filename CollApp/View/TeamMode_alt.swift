//
//  Teammode_alt.swift
//  CollApp
//
//  Created by Giuseppe Olivari on 24/10/23.
//

import SwiftUI

struct TeamMode_alt: View {
    @State var playerNumber: String = "2"
    
    var body: some View {
        Form{
            Section(header: Text("")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(Color.black)
                .multilineTextAlignment(.leading)){
                    
                
            }
            Section(header: Text("")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(Color.black)
                .multilineTextAlignment(.leading)){
                    
                
            }
            Section(header: Text("")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(Color.black)
                .multilineTextAlignment(.leading)){
                    
                
            }
            Section(header: Text("Select Your Player")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(Color.black)
                .multilineTextAlignment(.leading)){
                    
                
            }
            
            Section(header: Text("")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(Color.black)
                .multilineTextAlignment(.leading)){
                    List{
                        Picker("Number of players:", selection: $playerNumber ) {
                            Text("2").tag("2")
                            Text("3").tag("3")
                            Text("4").tag("4")
                            
                            
                            
                        }.pickerStyle(.inline)
                        
                    }
                
            }
            Section(""){
                Text("boh")
            }
        }.scrollContentBackground(.hidden)
            .background(Image("BackGround"))
            .ignoresSafeArea()
    }
}

#Preview {
    TeamMode_alt()
}

//ciao
