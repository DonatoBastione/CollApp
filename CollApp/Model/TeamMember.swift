//
//  TeamMember.swift
//  CollApp
//
//  Created by DONATO BASTIONE on 23/10/23.
//

import Foundation
import SwiftUI

struct TeamMember : Identifiable {
   
    var id: UUID = UUID()
    var name: String
    var image: String = "noimage"
}

