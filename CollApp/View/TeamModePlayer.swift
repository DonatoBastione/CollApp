//
//  TeamModePlayer.swift
//  CollApp
//
//  Created by Giuseppe Olivari on 25/10/23.
//

import SwiftUI


struct TeamModePlayer: View {
    
    
    @Environment (\.presentationMode) private var
presentationMode: Binding<PresentationMode>
    
    @StateObject var taskViewModel: TaskViewModel
    @StateObject var teamViewModel: TeamMemberViewModel
    var totalPlayers: Int
    var thisPlayer: Int
    var pawn: String
    
    @State var nickname: String = ""
    @State var newTask: String = ""
    var fotine = ImageClass()
    @State var isActive = false
    @State var selfoto: String = "noimage"
    
    var body: some View {
        
        var i: Int = 0
        
        NavigationStack {
            
            Spacer()
                .navigationBarBackButtonHidden (true)
                .toolbar(content: {
                    ToolbarItem (placement:
                            .navigationBarLeading) {
                                
                                HStack{
                                    NavigationLink(destination: ContentView()){
                                        Text("  Close")
                                    }
                                    ZStack{
                                    if(thisPlayer != totalPlayers){
                                        NavigationLink(destination: TeamModePlayer(taskViewModel: taskViewModel, teamViewModel: teamViewModel, totalPlayers: totalPlayers, thisPlayer: thisPlayer+1, pawn: pawn)
                                                        ) {
                                            Text("Next")
                                            
                                        }.simultaneousGesture(TapGesture().onEnded{
                                            teamViewModel.teamMember.append(TeamMember(name: nickname,image: selfoto))
                                        })
                                        .padding(.leading, 250.0)
                                    }else{
                                        if(totalPlayers == 4){
                                            NavigationLink(destination: Game_View(taskViewModel: taskViewModel, teamViewModel: teamViewModel, pawn: pawn)) {
                                                Text("Next")
                                                
                                            }.simultaneousGesture(TapGesture().onEnded{
                                                teamViewModel.teamMember.append(TeamMember(name: nickname,image: selfoto))
                                            })

                                            .padding(.leading, 250.0)
                                        }else if(totalPlayers == 3){
                                            NavigationLink(destination: GameView_3(taskViewModel: taskViewModel, teamViewModel: teamViewModel, pawn: pawn)) {
                                                Text("Next")
                                                
                                            }.simultaneousGesture(TapGesture().onEnded{
                                                teamViewModel.teamMember.append(TeamMember(name: nickname,image: selfoto))
                                            })

                                            .padding(.leading, 250.0)
                                        }else{
                                            NavigationLink(destination: GameView_2(taskViewModel: taskViewModel, teamViewModel: teamViewModel, pawn: pawn)) {
                                                Text("Next")
                                                
                                            }.simultaneousGesture(TapGesture().onEnded{
                                                teamViewModel.teamMember.append(TeamMember(name: nickname,image: selfoto))
                                            })

                                            .padding(.leading, 250.0)
                                        }
                                    }
                                    }
                                    
                                }
                            }
                })
            
            ZStack{
                Image("BackGround")
                    .ignoresSafeArea()
                
                
                
                ScrollView {
                    
                    
                    VStack {
                        
                        
                        
                        VStack {
                            TabView(selection: $selfoto){
                                ForEach(fotine.pupazzetti){pupazzetti in
                                    Image (pupazzetti.imageAvatar)
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 170.0, height: 150.0)
                                        .clipped()
                                        .tag(pupazzetti.imageAvatar)
                                }
                            }
                            .frame(height: 130)
                            .tabViewStyle(PageTabViewStyle())
                            
                            TextField("\("Player ")\(thisPlayer) ", text: $nickname)
                                .padding([.leading,], 120.0)
                                .padding(.top,10)
                                .bold()
                                .font(.largeTitle)
                        
                            
                            
                        } .padding(.top, 50.0)
                        
                        
                        
                        VStack(alignment: .leading, content: {
                            
                            Text("Tasks:")
                               
                                .font(.title)
                                .padding(.bottom)
                            
                            ForEach(taskViewModel.tasks) {tasks in
                                if(tasks.player == thisPlayer){
                                    HStack{
                                        Image(systemName: "circle.fill")
                                            .resizable()
                                            .frame(width: 24, height: 24)
                                            .foregroundColor(.accentColor)
                                        
                                        Text("")
                                        Text(tasks.text)
                                        Button(action: {
                                            while taskViewModel.tasks[i].text != tasks.text || taskViewModel.tasks[i].player != tasks.player {
                                                i = i+1
                                            }
                                            taskViewModel.tasks.remove(at: i)
                                        }, label: {
                                            Image(systemName: "trash")
                                        })
                                    }
                                }
                            }
                            
                            
                        })
                        .padding(.leading, -150.0)
                        
                        VStack(alignment: .leading, content: {
                            TextField("New Task:", text: $newTask)
                                .onSubmit {
                                    if(newTask != ""){
                                        taskViewModel.tasks.append(Task(text: newTask, player: thisPlayer))
                                        newTask = ""
                                    }
                                }
                            
                            
                            
                        }).padding(.leading, 45.0)
                        
                        
                        
                        
                        
                       
                    }
                }
                
            }
            
            
        }
        
        
    }
    
   
    }
#Preview {
    TeamModePlayer(taskViewModel: TaskViewModel()
, teamViewModel: TeamMemberViewModel(), totalPlayers: 3, thisPlayer: 1, pawn: "Lavorare")
}

