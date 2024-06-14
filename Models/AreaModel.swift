//
//  Area.swift
//  Capstone-Avery
//
//  Created by Avery Roth on 6/10/24.
//

import Foundation

enum Area : String, Identifiable, CaseIterable, Equatable {
    case planets
    case system

    var id: String { self.rawValue }
    var name: String { rawValue.capitalized }
    }

