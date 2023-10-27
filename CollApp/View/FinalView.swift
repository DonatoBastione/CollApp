//
//  FinalView.swift
//  CollApp
//
//  Created by Giulia Di Meo on 27/10/23.
//

import SwiftUI

struct FinalView: View {
    var body: some View {
        NavigationStack{
            NavigationLink(destination: ContentView()) {
                Text("Done") .padding(.leading, 250.0)
            }
                
            
            
            
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        }
    }
}
#Preview {
    FinalView()
}
