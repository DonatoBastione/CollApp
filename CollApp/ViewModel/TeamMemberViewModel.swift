//
//  TeamMemberViewModel.swift
//  CollApp
//
//  Created by DONATO BASTIONE on 23/10/23.
//

import Foundation

class TeamMemberViewModel: ObservableObject{
    @Published var teamMember: [TeamMember] = [
    
        TeamMember(name: "Giulia"),
        TeamMember(name: "Giuseppe")
    
    ]
}
