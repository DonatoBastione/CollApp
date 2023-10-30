//
//  Game View.swift
//  CollApp
//
//  Created by Giulia Di Meo on 25/10/23.
//
import Foundation
import SwiftUI

struct Game_View: View {
    var body: some View {
        NavigationStack {
            ZStack{
Image("BackGround")
                .resizable()
                .ignoresSafeArea()
                .opacity(0.5)
                .scaledToFill()
                NavigationLink(destination: FinalView()) {
                    
                    ZStack{
                        Image ("Ellipse 4")
                            .resizable()
                            .frame(width: 110, height: 110)
                            .padding(.top,UIScreen.main.bounds.height/60)
                            .padding(.bottom,UIScreen.main.bounds.width/60)
                            .padding(.leading,UIScreen.main.bounds.width/60)
                            .padding(.trailing,UIScreen.main.bounds.width/60)
                        Text("STOP")
                            .font(.title)
                            .bold()
                            .italic()
                            .foregroundColor(.white)
                            .padding(.top,UIScreen.main.bounds.height/60)
                            .padding(.bottom,UIScreen.main.bounds.width/60)
                            .padding(.leading,UIScreen.main.bounds.width/60)
                            .padding(.trailing,UIScreen.main.bounds.width/60)
                    }
                }

                
                
                HStack{
                    
                    VStack {
                        VStack{
                            Image("avatar1")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                            
                            Text ("Player1")
                                .font(.title3)
                            ZStack{
                                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                                    ZStack{
                                        Image("Ellipse 23")
                                            .resizable()
                                            .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                                            .padding(.top,20)
                                            .padding(.bottom,-10)
                                        Text("Task:\nDefine the big ideal")
                                            .font(.subheadline)
                                            .foregroundColor(.black)
                                            .padding(.top)
                                    }
                                })
                                
                            }
                        }.frame(width:UIScreen.main.bounds.width/2.2,height: UIScreen.main.bounds.height/4)
                            .position(x:UIScreen.main.bounds.width/4,y:UIScreen.main.bounds.height/5)
                        
                        
                        
                        
                        VStack{
                            Image("avatar5")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                            
                            Text ("Player3")
                                .font(.title3)
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
                                                .font(.subheadline)
                                                .foregroundColor(.black)
                                                .padding(.top)
                                        }
                                    })
                                    
                                }
                                
                                
                            }
                            
                        }.frame(width:UIScreen.main.bounds.width/2.2,height: UIScreen.main.bounds.height/4)
                        .position(x:UIScreen.main.bounds.width/4,y:UIScreen.main.bounds.height/5)}
                    VStack {
                        VStack{
                            Image("avatar4")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                            
                            Text ("Player2")
                                .font(.title3)
                            ZStack{
                                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                                    ZStack{
                                        Image("Ellipse 24")
                                            .resizable()
                                            .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                                            .padding(.top,20)
                                            .padding(.bottom,-10)
                                        Text("Task:\nDefine the essential question")
                                            .font(.subheadline)
                                            .foregroundColor(.black)
                                            .padding(.top)
                                    }
                                })
                                
                            }
                        }.frame(width:UIScreen.main.bounds.width/2.2,height: UIScreen.main.bounds.height/4)
                            .position(x:UIScreen.main.bounds.width/4,y:UIScreen.main.bounds.height/5);
                        
                        VStack{
                            Image("avatar3")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .padding(.top,20)
                                .padding(.bottom,-10)
                            Text ("Player4")
                                .font(.title3)
                            
                            ZStack{
                                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                                    ZStack{
                                        Image("Ellipse 26")
                                            .resizable()
                                            .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                                            .padding(.top,20)
                                            .padding(.bottom,-10)
                                        Text("Task:\nDefine Challange statement")
                                            .font(.subheadline)
                                            .foregroundColor(.black)
                                            .padding(.top)
                                    }
                                })
                                
                            }
                        }.frame(width:UIScreen.main.bounds.width/2.2,height: UIScreen.main.bounds.height/4)
                            .position(x:UIScreen.main.bounds.width/4,y:UIScreen.main.bounds.height/5)
                    }
                    
                    
                    
                }
                
                
                
                
            }.background(Image("iPhone 14 madre"))
                .toolbar(.hidden)
            
            
          }
        }
    }
    
    #Preview {
        Game_View()
    }


