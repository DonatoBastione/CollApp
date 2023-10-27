//
//  GameView_2.swift
//  CollApp
//
//  Created by Giuseppe Olivari on 27/10/23.
//

import SwiftUI

struct GameView_2: View {
    var body: some View {
        ZStack{
            ZStack{
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image ("Ellipse 4")
                        .resizable()
                        .frame(width: 110, height: 110)
                        .padding(.top,UIScreen.main.bounds.height/60)
                        .padding(.bottom,UIScreen.main.bounds.width/60)
                        .padding(.leading,UIScreen.main.bounds.width/60)
                        .padding(.trailing,UIScreen.main.bounds.width/60)
                    
                    
                })
                Text("Stop")
                    .font(.title)
                    .bold()
                    .foregroundColor(.white)
                    .padding(.top,UIScreen.main.bounds.height/60)
                    .padding(.bottom,UIScreen.main.bounds.width/60)
                    .padding(.leading,UIScreen.main.bounds.width/60)
                    .padding(.trailing,UIScreen.main.bounds.width/60)            }
    
            
            
                   
    
                VStack {
                    VStack{
                        Image("avatar1")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        
                        Text ("Player1")
                        ZStack{
                            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                                ZStack{
                                    Image("Ellipse 23")
                                        .resizable()
                                        .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                                        .padding(.top,20)
                                        .padding(.bottom,-10)
                                    Text("Task:\nDefine the big ideal")
                                        .foregroundColor(.black)
                                        .padding(.top)
                                }
                            })
                            
                    }
                    }.frame(width:UIScreen.main.bounds.width/2.2,height: UIScreen.main.bounds.height/4)
                        .position(x:UIScreen.main.bounds.width/2,y:UIScreen.main.bounds.height/5)
                        
                        
                    
                    
                    VStack{
                        Image("avatar5")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            
                            
                        Text ("Player3")
                        ZStack{
                            
                            ZStack{
                                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                                    ZStack{
                                        Image("Ellipse 25")
                                            .resizable()
                                            .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                                            .padding(.top,20)
                                            .padding(.bottom,-10)
                                        Text("Task:\nDefine the big ideal")
                                            .foregroundColor(.black)
                                            .padding(.top)
                                    }
                                })
                                
                        }
                                
                            
                        }
                    
                    }.frame(width:UIScreen.main.bounds.width/2.2,height: UIScreen.main.bounds.height/4)
                    .position(x:UIScreen.main.bounds.width/2,y:UIScreen.main.bounds.height/4.5)}
                
                       
                
                
            
            
            
           
            
            
        }.background(Image("GameView2"))
            .toolbar(.hidden)
       
            
       
    }
}

#Preview {
    GameView_2()
}
