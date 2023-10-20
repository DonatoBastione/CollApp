//
//  Task.swift
//  giuseppeswift
//
//  Created by Giuseppe Olivari on 19/10/23.
//

import Foundation
import SwiftUI

struct Task : Identifiable{
    
    var id: UUID = UUID()
    var text: String
    @State var done: Bool = false
    
}
