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
    
    @StateObject var taskViewModel = TaskViewModel()
    @StateObject var teamViewModel = TeamMemberViewModel()
    
    @State var playerNumber: Int = 2
    @State var pawntemp: String = ""
    
    var body: some View {
        
     
            
        NavigationStack{
            
            ZStack{
                
                NavigationLink(destination: TeamModePlayer(taskViewModel: taskViewModel, teamViewModel: teamViewModel, totalPlayers: playerNumber, thisPlayer: 1)) {
                    Text("Next")
                    
                }
                Form{
                    
                    Section(header: Text("Select Your Player")
                        .font(.title)
                        .italic()
                        .fontWeight(.bold)
                        .foregroundColor(Color.black)
                        .multilineTextAlignment(.leading)){
                            
                            
                        }
                    
                    Section{
                            List{
                                Picker("Number of players:", selection: $playerNumber ) {
                                    Text("2").tag(2)
                                    Text("3").tag(3)
                                    Text("4").tag(4)
                                    
                                }.pickerStyle(.inline)
                                    .font(.title3)
                                    
                                
                            }
                            
                        }
                    Section{
                        Text("Pawn")
                            .font(.title3)
                        TextField("", text: $pawntemp)
                         
                    }
                }.padding(.top,200)
                .scrollContentBackground(.hidden)
                    .background(Image("BackGround"))
                    .ignoresSafeArea()
                
                    .navigationBarBackButtonHidden (true)
                    .toolbar(content: {
                        ToolbarItem (placement:
                                .navigationBarLeading) {
                                    HStack{
                                        Button(action: {
                                            presentationMode.wrappedValue
                                                .dismiss ()
                                        }, label: {
                                            
                                            
                                            Text ("  Close" )
                                               
                                            
                                        }
                                        )
                                        NavigationLink(destination: TeamModePlayer(taskViewModel: taskViewModel, teamViewModel: teamViewModel, totalPlayers: playerNumber, thisPlayer: 1)) {
                                            Text("Next")
                                            
                                        }
                                        .padding(.leading, 220.0)
                                        
                                        
                                    }
                                }
                        
                    })
                
                
                
            }
        }
        }
    
}

#Preview {
    TeamMode_alt()
}
