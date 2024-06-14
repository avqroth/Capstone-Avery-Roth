//
//  Area.swift
//  Capstone-Avery
//
//  Created by Avery Roth on 6/10/24.
//

import Foundation

enum Area : String, CaseIterable, Identifiable {
    var id: String { self.rawValue }
    case planets
    case system

    var name: String {
        switch self {
        case .planets:
            return "Planets"
        case .system:
            return "System"
        }
    }
}

