//
//  Teammode_alt.swift
//  CollApp
//
//  Created by Giuseppe Olivari on 24/10/23.
//

import SwiftUI

struct TeamMode_alt: View {
    
    
    @Environment (\.presentationMode) private var
    presentationMode: Binding<PresentationMode>
    
    
    @State var playerNumber: String = "2"
    @State var pawntemp: String = ""
    
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
                Section("Pawn"){
                    TextField("", text: $pawntemp)
                }
            }.scrollContentBackground(.hidden)
                .background(Image("BackGround"))
                .ignoresSafeArea()
        
                .navigationBarBackButtonHidden (true)
                .toolbar(content: {
                    ToolbarItem (placement:
                            .navigationBarLeading) {
                                
                                Button(action: {
                                    presentationMode.wrappedValue
                                        .dismiss ()
                                }, label: {
                                    
                                
                                    Image (systemName: "house")
                                        .foregroundColor (.blue)
                                    Text ("Close" )
                                        .foregroundColor(.blue)
                                    
                                })
                            }
                })
            
            
            
            
        }
    
}

#Preview {
    TeamMode_alt()
}
