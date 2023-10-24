//
//  YourView.swift
//  CollApp
//
//  Created by SHOHJAHON on 24/10/23.
//

import SwiftUI

struct TeamMode_Ending: View {
    var body: some View {
        VStack {
            // Title text at the top of the page
            Text("The challenge is \n completed")
                .font(.largeTitle) // Makes the title text larger
                .foregroundColor(.black) // Sets title text color
                .multilineTextAlignment(.center)
                .padding() // Adds padding around the title
                .background(Color.white.opacity(0.1))
                // Gives a background color to the title area
                .cornerRadius(10) // Rounds the corners of the title background
                .italic()
                .bold()
            

            Spacer() // Will push the rectangle down

            // Rectangle with text
            ZStack {
                Rectangle()
                    .fill(Color.white)
                    .frame(width: 300, height: 150) // Adjust the size as needed
                    .cornerRadius(10)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.purple, lineWidth: 4)
                    )

                // Text inside the rectangle
                VStack(alignment: .center, spacing: 10) {
                    Text("Bartolomeo")
                        .bold()
                        .font(.title2) // Adjust font size/style as needed
                        .padding(.bottom, 2) // Space between name and message
                    Text("You didn’t complete the task.") // First paragraph
                        .bold()
                    Text("Drive your friends to go shopping.") // Second paragraph
                        .bold()
                }
                .foregroundColor(.black) // Text color
                .multilineTextAlignment(.center) // Center align text
                .padding() // Ensure text doesn't touch the sides of the rectangle
                
                               .frame(width: 300, height: 300)
                
            }

            Spacer() // Extra space at the bottom (optional)
        }
    }
}

struct YourView_Previews: PreviewProvider {
    static var previews: some View {
        TeamMode_Ending()
    }
}
