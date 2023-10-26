//
//  SModeAlt.swift
//  CollApp
//
//  Created by Giuseppe Olivari on 25/10/23.
//

import SwiftUI



struct SModeAlt: View {
    

    
    @StateObject var viewModel = TaskViewModel()
    
    @State var nickname: String = ""
    @State var newTask: String = ""
    /*let images:[String] = ["noimage", "avatar1","avatar2","avatar3","avatar4","avatar5","avatar6","avatar7","avatar8","avatar9"]*/
    var fotine = ImageClass ()

    var body: some View {
        
        NavigationStack {
            
            ScrollView {
                
                
                VStack {
                    
                    ScrollView (.horizontal) {
                        LazyHStack{
                            ForEach(fotine.pupazzetti){pupazzetti in
                                Image (pupazzetti.imageAvatar)
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 170.0, height: 150.0)
                                    .clipped()
                            }
                        }
                        .scrollTargetLayout()
                        
                    }
                    .scrollTargetBehavior(.viewAligned)
                    .safeAreaPadding(.horizontal, 115)
                    
                    TextField("NickName", text: $nickname)
                        .padding([.leading,], 120.0)
                        .padding(.top,10)
                        .bold()
                        .font(.largeTitle)
                    
                    
                    
                    
                    
                    
                    
                    
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
                                .foregroundStyle (Color.yellow)
                            Text ("Add")
                        }
                        
                        
                    })
                    
                }).padding(.leading, 45.0)
                
                
                
                
                
                
            }
        }
        
    }
}

#Preview {
    SModeAlt()
}
