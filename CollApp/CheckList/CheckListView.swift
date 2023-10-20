//
//  SwiftUIView.swift
//  giuseppeswift
//
//  Created by Giuseppe Olivari on 20/10/23.
//

import SwiftUI

struct CheckListView: View {
    @State var checked: Bool
    var body: some View {
        Toggle(isOn: $checked) {
            Text("")
        }
        .toggleStyle(CheckboxStyle())
    }
}


