//
//  Area.swift
//  Capstone-Avery
//
//  Created by Avery Roth on 6/10/24.
//

import Foundation

enum Area : String, Identifiable, CaseIterable, Equatable
{

    case thePlanets, theSystem
    var id: Self { self }
    var name: String { rawValue.capitalized }

    var title: String {
        switch self {
            case .thePlanets:
                "The Planets"
            case .theSystem:
                "The System"
        }
    }
}
