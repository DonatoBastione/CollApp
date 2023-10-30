//
//  GameView_3.swift
//  CollApp
//
//  Created by Giuseppe Olivari on 27/10/23.
//

import SwiftUI

struct GameView_3: View {
    
    @StateObject var taskViewModel: TaskViewModel
    @StateObject var teamViewModel: TeamMemberViewModel
    
    var pawn: String
    
    @State var taskPlayer1 = "Tap to start!"
    @State var taskPlayer2 = "Tap to start!"
    @State var taskPlayer3 = "Tap to start!"
    @State var indexP1: Int = 0
    @State var indexP2: Int = 0
    @State var indexP3: Int = 0
    
    var spazio = ", "

    
    var body: some View {
        NavigationStack {
            ZStack{
Image("BackGround")
                .resizable()
                .ignoresSafeArea()
                .opacity(0.5)
                .scaledToFill()
            
                    
                            
                            
                if(taskPlayer1 != "Well Done!" && taskPlayer2 != "Well Done!" && taskPlayer3 != "Well Done!"){
                    NavigationLink(destination: FinalView(pawn: pawn, losers: "Nobody completed their tasks")) {
                        
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
                    
                }else if(taskPlayer1 != "Well Done!" && taskPlayer2 != "Well Done!" && taskPlayer3 == "Well Done!"){
                    NavigationLink(destination: FinalView(pawn: pawn, losers: "\(teamViewModel.teamMember[0].name)\(spazio)\(teamViewModel.teamMember[1].name)")) {
                        
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
                }else if(taskPlayer1 != "Well Done!" && taskPlayer2 == "Well Done!" && taskPlayer3 != "Well Done!"){
                    NavigationLink(destination: FinalView(pawn: pawn, losers: "\(teamViewModel.teamMember[0].name)\(spazio)\(teamViewModel.teamMember[2].name)")) {
                        
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
                }else if(taskPlayer1 == "Well Done!" && taskPlayer2 != "Well Done!" && taskPlayer3 != "Well Done!"){
                    NavigationLink(destination: FinalView(pawn: pawn, losers: "\(teamViewModel.teamMember[1].name)\(spazio)\(teamViewModel.teamMember[2].name)")) {
                        
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
                }else if (taskPlayer1 != "Well Done!" && taskPlayer2 == "Well Done!" && taskPlayer3 == "Well Done!"){
                    NavigationLink(destination:FinalView(pawn: pawn, losers: teamViewModel.teamMember[0].name
                                                         
                                                        )) {
                        
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
                }else if(taskPlayer2 != "Well Done!" && taskPlayer1 == "Well Done!" && taskPlayer3 == "Well Done!"){
                    NavigationLink(destination:FinalView(pawn: pawn, losers: teamViewModel.teamMember[1].name
                                                         
                                                        )) {
                        
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

                }else if(taskPlayer3 != "Well Done!" && taskPlayer1 == "Well Done!" && taskPlayer2 == "Well Done!"){
                    NavigationLink(destination:FinalView(pawn: pawn, losers: teamViewModel.teamMember[2].name
                                                         
                                                        )) {
                        
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
                }else{
                    NavigationLink(destination: FinalView(pawn: pawn, losers: "Everybody completed their tasks")) {
                        
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
                }
                
                
                HStack{
                    
                    VStack {
                        VStack{
                            Image(teamViewModel.teamMember[0].image)
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
                            .position(x:UIScreen.main.bounds.width/4,y:UIScreen.main.bounds.height/5)
                            .padding(.top,40)
                        
                        
                        
                        VStack{
                            Image(teamViewModel.teamMember[1].image)
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
                        .position(x:UIScreen.main.bounds.width/2,y:UIScreen.main.bounds.height/4)}
                    
                    VStack {
                        VStack{
                            Image(teamViewModel.teamMember[2].image)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                            
                            Text (teamViewModel.teamMember[2].name)
                            ZStack{
                                Button(action: {
                                    indexP3 = FindNextTaskP3(number: 3, index: indexP3)
                                }, label: {
                                    ZStack{
                                        Image("Ellipse 24")
                                            .resizable()
                                            .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                                            .padding(.top,20)
                                            .padding(.bottom,-10)
                                        Text(taskPlayer3)
                                            .foregroundColor(.black)
                                            .padding(.top)
                                    }
                                })
                                
                            }
                        }.frame(width:UIScreen.main.bounds.width/2.2,height: UIScreen.main.bounds.height/4)
                            .position(x:UIScreen.main.bounds.width/4,y:UIScreen.main.bounds.height/5);
                            
                           
                        
                        
                    }      .padding(.top,40)
                    
                    
                    
                }
                
                
                
                
            }.background(Image("GameView3"))
                .toolbar(.hidden)
            
            
            
        }
        
    }
    func FindNextTaskP1 (number: Int, index: Int) -> Int {
        if (index >= taskViewModel.tasks.count){
            taskPlayer1 = "Well Done!"
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
            taskPlayer2 = "Well Done!"
        }else if (taskViewModel.tasks[index].player == number && taskViewModel.tasks[index].done2 == false){
            taskPlayer2 = taskViewModel.tasks[index].text
            taskViewModel.tasks[index].done2 = true
            return index+1
        }else{
            return FindNextTaskP2(number: number, index: index+1)
        }
        return 0
        
        
    }
    func FindNextTaskP3 (number: Int, index: Int) -> Int {
        if (index >= taskViewModel.tasks.count){
            taskPlayer3 = "Well Done!"
        }else if (taskViewModel.tasks[index].player == number && taskViewModel.tasks[index].done2 == false){
            taskPlayer3 = taskViewModel.tasks[index].text
            taskViewModel.tasks[index].done2 = true
            return index+1
        }else{
            return FindNextTaskP3(number: number, index: index+1)
        }
        return 0
        
        
    }
}

#Preview {
    GameView_3(taskViewModel: TaskViewModel(), teamViewModel: TeamMemberViewModel(),pawn: "Lavorare")
}

