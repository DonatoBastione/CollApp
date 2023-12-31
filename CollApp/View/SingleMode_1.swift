//
//  ContentView.swift
//  giuseppeswift
//
//  Created by Giuseppe Olivari on 18/10/23.
//

import SwiftUI



struct SingleMode_1: View {
    

    
    @Environment (\.presentationMode) private var
    presentationMode: Binding<PresentationMode>
    
    
    @StateObject var viewModel = TaskViewModel()
    
    @State var nickname: String = ""
    @State var newTask: String = ""
    
    var body: some View {
        
        NavigationStack {
            ZStack{
                Image("BackGround")
                    .ignoresSafeArea()
                
                Spacer()
                    .navigationBarBackButtonHidden (true)
                    .toolbar(content: {
                        ToolbarItem (placement:
                                .navigationBarLeading) {
                                    
                                    Button(action: {
                                        presentationMode.wrappedValue
                                            .dismiss ()
                                    }, label: {
                                        
                                        
                                       
                                        Text ("  Close" )
                                        
                                        
                                    })
                                }
                    })
                
                
                ScrollView {
                    
                    
                    VStack {
                        
                        
                        ZStack{
                           
                            Image ("noimage")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 150.0, height: 150.0)
                              
                            
                            
                            
                            
                            
                        }.frame(width: 170.0, height: 170.0).clipShape(Circle())
                        
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
                            
                            
                            
                            
                        })
                        
                        
                        
                        
                    } .padding(.top, 50.0)
                    
                    
                    
                    VStack(alignment: .leading, content: {
                        
                        Text("Tasks:")
                            .bold()
                            .font(.title)
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
                        TextField("New Task:", text: $newTask)
                        
                        Button(action: {
                            if(newTask != ""){
                                viewModel.tasks.append(Task(text: newTask))
                                newTask = ""
                            }
                        }, label: {
                            HStack{
                                Image (systemName: "plus")
                                    .resizable()
                                    .frame (width: 20, height: 20)
                                
                                Text ("Add")
                            }
                            
                            
                        })
                        
                    }).padding(.leading, 45.0)
                    
                    
                    
                    
                    
                    
                }
            }
        }
    }
}

#Preview {
    SingleMode_1()
}
