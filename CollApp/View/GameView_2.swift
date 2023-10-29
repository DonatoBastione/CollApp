//
//  GameView_2.swift
//  CollApp
//
//  Created by Giuseppe Olivari on 27/10/23.
//

import SwiftUI

struct GameView_2: View {
    
    
    
    
    
    @StateObject var taskViewModel: TaskViewModel
    @StateObject var teamViewModel: TeamMemberViewModel
    @State var taskPlayer1 = "Tap to start!"
    @State var taskPlayer2 = "Tap to start!"
    @State var indexP1: Int = 0
    @State var indexP2: Int = 1
    
    
    var body: some View {
        NavigationStack {
            ZStack{
                
                Image("BackGround")
                    .resizable()
                    .ignoresSafeArea()
                    .opacity(0.5)
                    .scaledToFill()
                
                ZStack{
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        
                        NavigationLink(destination: FinalView()) {
                            Image ("Ellipse 4")
                                .resizable()
                                .frame(width: 110, height: 110)
                                .padding(.top,UIScreen.main.bounds.height/60)
                                .padding(.bottom,UIScreen.main.bounds.width/60)
                                .padding(.leading,UIScreen.main.bounds.width/60)
                                .padding(.trailing,UIScreen.main.bounds.width/60)
                            
                        }
                    })
                    NavigationLink(destination: FinalView()){
                        Text("STOP")
                            .font(.title)
                            .bold()
                            .italic()
                            .foregroundColor(.white)
                            .padding(.top,UIScreen.main.bounds.height/60)
                            .padding(.bottom,UIScreen.main.bounds.width/60)
                            .padding(.leading,UIScreen.main.bounds.width/60)
                        .padding(.trailing,UIScreen.main.bounds.width/60)            }
                }
                
                
                
                
                VStack {
                    VStack{
                        Image("avatar1")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        
                        Text (teamViewModel.teamMember[0].name)
                        ZStack{
                            Button(action: {
                                
                                indexP1 = FindNextTaskP1(number: 1, index: indexP1)
                                
                            }, label: {
                                ZStack{
                                    Image("Ellipse 23")
                                        .resizable()
                                        .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                                        .padding(.top,20)
                                        .padding(.bottom,-10)
                                    Text(taskPlayer1)
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
                        
                        
                        Text (teamViewModel.teamMember[1].name)
                        ZStack{
                            
                            ZStack{
                                Button(action: {
                                    
                                    indexP2 = FindNextTaskP2(number: 2, index: indexP2)
                                    
                                }, label: {
                                    ZStack{
                                        Image("Ellipse 25")
                                            .resizable()
                                            .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                                            .padding(.top,20)
                                            .padding(.bottom,-10)
                                        Text(taskPlayer2)
                                            .foregroundColor(.black)
                                            .padding(.top)
                                    }
                                })
                                
                            }
                            
                            
                        }
                        
                    }.frame(width:UIScreen.main.bounds.width/2.2,height: UIScreen.main.bounds.height/4)
                    .position(x:UIScreen.main.bounds.width/2,y:UIScreen.main.bounds.height/4.5)}
                .padding(.top,35)
                
                
                
                
                
                
                
                
                
                
            }.background(Image("GameView2"))
                .toolbar(.hidden)
            
            
        }
    }
    func FindNextTaskP1 (number: Int, index: Int) -> Int {
        if (index >= taskViewModel.tasks.count){
            taskPlayer1 = "Fine!"
        }else if (taskViewModel.tasks[index].player == number && taskViewModel.tasks[index].done2 == false){
            taskPlayer1 = taskViewModel.tasks[index].text
            taskViewModel.tasks[index].done2 = true
            return index+1
        }else{
            return FindNextTaskP1(number: number, index: index+1)
        }
        return 0
        
        
    }
    func FindNextTaskP2 (number: Int, index: Int) -> Int {
        if (index >= taskViewModel.tasks.count){
            taskPlayer2 = "Fine!"
        }else if (taskViewModel.tasks[index].player == number && taskViewModel.tasks[index].done2 == false){
            taskPlayer2 = taskViewModel.tasks[index].text
            taskViewModel.tasks[index].done2 = true
            return index+1
        }else{
            return FindNextTaskP2(number: number, index: index+1)
        }
        return 0
        
        
    }
}



#Preview {
    GameView_2(taskViewModel: TaskViewModel(), teamViewModel: TeamMemberViewModel())
}

