//
//  TaskViewModel.swift
//  giuseppeswift
//
//  Created by Giuseppe Olivari on 19/10/23.
//

import Foundation


class TaskViewModel: ObservableObject {
    
    @Published var tasks: [Task] = [
    
        Task(text: "Mangiare"),
        Task(text: "Dormire")
    
    ]
    
}
