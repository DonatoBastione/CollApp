//
//  SModeAlt.swift
//  CollApp
//
//  Created by Giuseppe Olivari on 25/10/23.
//

import SwiftUI



struct SModeAlt: View {
    
    @Environment (\.presentationMode) private var
presentationMode: Binding<PresentationMode>
    
    @StateObject var viewModel = TaskViewModel()
    
    @State var nickname: String = ""
    @State var newTask: String = ""
    @State var secchio: String = ""
    @State var selfoto: String = ""
    
    
    
    /*let images:[String] = ["noimage", "avatar1","avatar2","avatar3","avatar4","avatar5","avatar6","avatar7","avatar8","avatar9"]*/
    var fotine = ImageClass()
    
    
    var body: some View {
        
        var i: Int = 0
        
        NavigationStack {
            ZStack{
                //Image("BackGround")
                //.ignoresSafeArea()
                Image("BackGround")
                    .resizable()
                    .ignoresSafeArea()
                    .scaledToFill()
                
                
                ScrollView {
                    
                    
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
                    
                    VStack {
                            TabView(selection: $selfoto){
                                ForEach(fotine.pupazzetti){pupazzetti in
                                    Image (pupazzetti.imageAvatar)
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 170.0, height: 150.0)
                                        .clipped()
                                        .tag(pupazzetti.imageAvatar)
                                        .padding(.bottom,50)
                                }
                            }
                            .frame(height: 180)
                            .tabViewStyle(PageTabViewStyle())
                        
                            /*.mask(Rectangle())
                            .scrollTargetBehavior(.viewAligned)
                            .safeAreaPadding(.horizontal, 115)*/
                        
                        
                        
                        TextField("NickName", text: $nickname)
                            .padding([.leading,], 120.0)
                            .padding(.top,10)
                            .bold()
                            .font(.largeTitle)
                        
                        
                        
                        
                        
                        
                        
                        
                    } .padding(.top, 100.0)
                    
                    
                    
                    VStack(alignment: .leading, content: {
                        
                        Text("Tasks:")
                            .font(.title)
                        
                            .padding(.top)
                        
                        ForEach(viewModel.tasks) {tasks in
                            
                            HStack{
                                CheckListView(checked: tasks.done)
                                Text(tasks.text)
                                
                                Button(action: {
                                    while viewModel.tasks[i].text != tasks.text {
                                        i = i+1
                                    }
                                    viewModel.tasks.remove(at: i)
                                }, label: {
                                    Image(systemName: "trash")
                                })
                            }
                        }
                        
                        
                        
                    })
                    .padding(.leading, -150)
                    
                    VStack(alignment: .leading, content: {
                        HStack{
                            
                            Image(systemName: "circle.fill")
                                .resizable()
                                .frame(width: 24, height: 24)
                                .foregroundColor(.accentColor)
                            
                        
                            
                            TextField("New Task:", text: $newTask)
                                .onSubmit {
                                    if(newTask != ""){
                                        viewModel.tasks.append(Task(text: newTask))
                                        newTask = ""
                                        
                                    }
                                }
                            
                        }
                        
                    }).padding(.leading, 45.0)
                    
                    
                    
                    
                    
                }
            }
        }
        
    }
}

#Preview {
    SModeAlt()
}
