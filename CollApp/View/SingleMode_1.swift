//
//  ContentView.swift
//  giuseppeswift
//
//  Created by Giuseppe Olivari on 18/10/23.
//

import SwiftUI



struct SingleMode_1: View {
    
    
    @StateObject var viewModel = TaskViewModel()
    
    @State var nickname: String = ""
    @State var newTask: String = ""
    
    var body: some View {
        
        NavigationStack {
            
            ScrollView {
                
                
                VStack {
                    
                    Button(action: {
                        if(newTask != ""){
                            viewModel.tasks.append(Task(text: newTask))
                            newTask = ""
                        }
                    }, label: {
                        Image (systemName: "plus")
                            .resizable()
                            .frame (width: 20, height: 20)
                            .position(CGPoint(x: 350, y: 9))
                        
                            .foregroundStyle (Color.yellow)
                        
                        
                        
                    })
                    
                    
                    ZStack{
                        Color.gray //quando si implementa l'immagine questo è da eliminare, ora serve per capire le dimensioni
                        Image ("noimage")
                            .resizable()
                            .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                            .frame(width: 150.0, height: 150.0)
                            .clipped()
                        
                        
                        
                        
                        
                    }.frame(width: 170.0, height: 170.0).clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    
                    TextField("NickName", text: $nickname)
                        .padding([.leading,], 120.0)
                        .padding(.top,10)
                        .bold()
                        .font(.largeTitle)
                    
                    
                    
                    Button(action: {},
                           label: {
                        Image (systemName: "plus")
                            .resizable()
                            .frame (width: 40, height: 40)
                            .padding(.top, -130.0)
                            .padding(.leading, 95)
                            .foregroundStyle (Color.yellow)
                        
                        
                        
                    })
                    
                    
                    
                    
                } .padding(.top, 50.0)
                
                
                
                VStack(alignment: .leading, content: {
                    
                    Text("Tasks:")
                        .bold()
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    Text(" ")
                    
                    ForEach(viewModel.tasks) {tasks in
                        
                        HStack{
                            CheckListView(checked: tasks.done)
                            Text(tasks.text)
                        }
                    }
                    
                })
                .padding(.leading, -150.0)
                
                VStack(alignment: .leading, content: {
                    TextField("Task:", text: $newTask)
                }).padding(.leading, 45.0)
                
                
                
                
            }
        }
        
    }
}

#Preview {
    SingleMode_1()
}
