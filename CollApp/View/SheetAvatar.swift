//
//  SheetAvatar.swift
//  CollApp
//
//  Created by adriano prota on 23/10/23.
//

import SwiftUI

struct SheetAvatar: View {
    var body: some View {
        VStack{
            Text("Choose your avatar")
                .font(
                    Font.custom("Times New Roman", size: 20)
                        .weight(.semibold)
                )
                .foregroundColor(.black)
                .frame(width: 173, height: 21, alignment: .leading)
            
        }
        VStack{
            Rectangle()
              .foregroundColor(.clear)
              .frame(width: 331, height: 360)
              .background(
                Image("PATH_TO_IMAGE")
                  .resizable()
                  .aspectRatio(contentMode: .fill)
                  .frame(width: 331, height: 360)
                  .clipped()
              )
        }
   
            
    }
}
#Preview {
    SheetAvatar()
}
