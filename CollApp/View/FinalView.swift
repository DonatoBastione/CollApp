//
//  FinalView.swift
//  CollApp
//
//  Created by Giulia Di Meo on 27/10/23.
//

import SwiftUI

struct FinalView: View {
    var body: some View {
        NavigationStack {
            ZStack{
                Image("BackGround")
                    .resizable()
                    .ignoresSafeArea()
                    .scaledToFill()
                
                NavigationLink(destination: ContentView()) {
                    
                    Text("Done")
                            .padding(.leading,280)
                    }
                    
                    VStack{
                        //Image(systemName: "fireworks")
                        Text("THE CHALLANGE IS \n        COMPLETED")
                            .padding(.top,UIScreen.main.bounds.width/7)
                            .padding(.bottom,50)
                            .bold()
                            .font(.title)
                        ZStack{
                            Image(systemName: "fireworks")
                                .resizable()
                            
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 70)
                                .padding(.trailing,200)
                                .padding(.bottom,330)
                            
                            
                            Image(systemName: "fireworks")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 70)
                                .padding(.bottom,450)
                                .padding(.trailing,130)
                            
                            
                            Image(systemName: "fireworks")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 70)
                                .padding(.bottom,450)
                                .padding(.trailing,280)
                            
                            
                            
                            Text("Bartolomeo\nYou didn’t completed the task\nDrive your friends to go shopping")
                                .frame(width: 250, height: 150)
                                .border(Color.accentColor)
                            
                            
                            
                                .padding(.bottom,100)
                            
                            Image(systemName: "fireworks")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 70)
                                .padding(.leading,200)
                                .padding(.top,280)
                            
                            
                            Image(systemName: "fireworks")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 70)
                                .padding(.leading,250)
                                .padding(.top,140)
                            
                            Image(systemName: "fireworks")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 70)
                                .padding(.top,140)
                                .padding(.leading,120)
                            
                        }
                    }
                }
            }
        }
    }

#Preview {
    FinalView()
}
