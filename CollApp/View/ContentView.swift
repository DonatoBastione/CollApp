//
//  ContentView.swift
//  CollApp
//
//  Created by DONATO BASTIONE on 19/10/23.
//

import SwiftUI


struct ContentView: View {
    var body: some View {
        
        NavigationStack{
            
            ZStack{
                Image("BackGround")
                    .ignoresSafeArea()
                
                VStack {
                    Text("Choose the modality ")
                        .font(.title)
                    //.font(
                    //.system(size: 24, weight: .semibold, design: .default)
                    
                    //Font.custom("SF Pro", size: 24, relativeTo: .title)
                    
                    
                    
                    
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .foregroundColor(.black)
                    
                }
                .padding(.top,-170)
                
                VStack{
                
                NavigationLink(destination: SModeAlt()) {
                    
                    ZStack{
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 233, height: 73)
                            .background(Color(red: 0.68, green: 0.22, blue: 0.72))
                            .cornerRadius(20)
                            .overlay(
                                RoundedRectangle(cornerRadius: 20)
                                    .inset(by: 2)
                                    .stroke(Color(red: 0.64, green: 0.22, blue: 0.68), lineWidth: 4)
                            )
                        VStack{
                            HStack{
                                Text("Single")
                                Image(systemName: "person.fill")
                            }
                            .font(
                                Font.custom("SF Pro", size: 28)
                                    .weight(.semibold)
                            )
                            .multilineTextAlignment(.center)
                            .foregroundColor(.white)
                            .frame(width: 181, height: 27, alignment: .top)
                            
                            
                        }
                    }
                }
                .padding(.top,170)
                
                
                
                
                
                
                
                NavigationLink(destination: TeamMode_alt()){
                    ZStack{
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 233, height: 73)
                            .background(Color(red: 0.68, green: 0.22, blue: 0.72))
                            .cornerRadius(20)
                            .overlay(
                                RoundedRectangle(cornerRadius: 20)
                                    .inset(by: 2)
                                    .stroke(Color(red: 0.64, green: 0.22, blue: 0.68), lineWidth: 4)
                            )
                        VStack{
                            HStack{
                                Text("Team")
                                Image(systemName: "person.3.fill")
                            }
                            .font(
                                Font.custom("SF Pro", size: 28)
                                    .weight(.semibold)
                            )
                            .multilineTextAlignment(.center)
                            .foregroundColor(.white)
                            .frame(width: 181, height: 27, alignment: .top)
                            
                            
                        }
                    }
                }
            }
                .padding(.top,-150)
                
            }
            
        }
        .toolbar(.hidden)
    }
    
    
}


#Preview {
    ContentView()
}
