//
//  TeamMode_1.swift
//  CollApp
//
//  Created by DONATO BASTIONE on 23/10/23.
//

import SwiftUI


struct TeamMode_1: View {
    
    @StateObject var viewModel = TeamMemberViewModel()
    @State var memberName: String = ""
    @State var image: String = "noimage_plus"
    
    
    var body: some View {
        
        NavigationStack{
            ScrollView{
                VStack(alignment: .leading){
                    Text("")
                        .font(.largeTitle)
                    ForEach(viewModel.teamMember){member in
                        HStack{
                            
                            ZStack{
                                Color.gray
                                Image ("noimage")
                                    .resizable()
                                    .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                                    .frame(width: 50.0, height: 50.0)
                                    .clipped()
                            }.frame(width: 70.0, height: 70.0).clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/).padding(.leading, 0)
                            Text(member.name)
                        }
                    }
                    HStack{
                        Button (action: {
                            /*Da settare qui il codice per il cambio immagine*/
                        }, label: {
                            ZStack{
                                
                                Color.gray
                                Image (image)
                                    .resizable()
                                    .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                                    .frame(width: 50.0, height: 50.0)
                                    .clipped()
                                
                                
                            }.frame(width: 70.0, height: 70.0).clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/).padding(.leading, 0)
                        })
                        
                        
                        TextField("Team member name", text: $memberName)
                    }
                    Text("")
                    Button(action: {
                        if(memberName != ""){
                            viewModel.teamMember.append(TeamMember(name: memberName))
                        }
                        memberName = ""
                    }, label: {
                        HStack{
                            Image (systemName: "plus")
                                .resizable()
                                .frame (width: 20, height: 20)
                                .foregroundStyle (Color.yellow)
                            Text ("Add")
                        }
                        
                        
                    })
                }.padding(.leading, 30.0).frame(width: nil)


            }.frame(width: nil).navigationTitle("Team Members")

        }.padding(.trailing, 50.0)
            .padding(.top, 100)
    }
}

#Preview {
    TeamMode_1()
}
