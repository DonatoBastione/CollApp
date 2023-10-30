//
//  FinalView.swift
//  CollApp
//
//  Created by Giulia Di Meo on 27/10/23.
//

import SwiftUI

struct FinalView: View {
    
    var pawn: String
    var losers: String
    
    var body: some View {
            
        
        
            NavigationStack {
                
                ZStack{
                    
                    Image("BackGround")
                        .resizable()
                        .ignoresSafeArea()
                        .scaledToFill()
                
                VStack{
                    //Image(systemName: "fireworks")
                    Text("THE CHALLANGE IS \n        COMPLETED")
                        .padding(.top,UIScreen.main.bounds.width/7)
                        .padding(.bottom,50)
                        .bold()
                        .font(.title)
                        .italic()
                    ZStack{
                        Image(systemName: "fireworks")
                            .resizable()
                        
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 70)
                            .padding(.trailing,200)
                            .padding(.bottom,330)
                            .foregroundColor(.accentColor)
                        
                        
                        Image(systemName: "fireworks")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 70)
                            .padding(.bottom,450)
                            .padding(.trailing,130)
                            .foregroundColor(.accentColor)
                        
                        
                        Image(systemName: "fireworks")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 70)
                            .padding(.bottom,450)
                            .padding(.trailing,280)
                            .foregroundColor(.accentColor)
                        
                        
                        
                            Text(losers)
                            .padding(.bottom,190)
                     
                        Text("\nIf you didn’t complete the task,\nThe pawn is \(pawn)")
                            .font(.subheadline)
                            .frame(width: 250, height: 150)
                      
                            .overlay(
                                      RoundedRectangle(cornerRadius: 20)
                                          .stroke(Color.accentColor, lineWidth: 3)
                                  )
                        
                        
                        
                            .padding(.bottom,100)
                        
                        Image(systemName: "fireworks")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 70)
                            .padding(.leading,200)
                            .padding(.top,280)
                            .foregroundColor(.accentColor)
                        
                        
                        Image(systemName: "fireworks")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 70)
                            .padding(.leading,250)
                            .padding(.top,140)
                            .foregroundColor(.accentColor)
                        
                        Image(systemName: "fireworks")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 70)
                            .padding(.top,140)
                            .padding(.leading,120)
                            .foregroundColor(.accentColor)
                        
                    }
                }
                }.toolbar {
                   
                    NavigationLink(destination: ContentView()) {
                        Text("Done")
                           
                        
                    }
                }
            
            
        }.navigationBarBackButtonHidden()
    }
}

#Preview {
    FinalView(pawn: "lavorare", losers: "GianPasquale")
}
