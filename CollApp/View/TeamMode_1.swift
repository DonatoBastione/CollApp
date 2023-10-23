//
//  TeamMode_1.swift
//  CollApp
//
//  Created by DONATO BASTIONE on 23/10/23.
//

import SwiftUI


struct TeamMode_1: View {
    
    @StateObject var viewModel = TeamMemberViewModel()
    
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
                }.navigationTitle("Boh")


            }

        }.padding(.trailing, 150.0)
            .padding(.top, 100)
    }
}

#Preview {
    TeamMode_1()
}
