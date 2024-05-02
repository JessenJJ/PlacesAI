//
//  Place.swift
//  PlacesAI
//
//  Created by User50 on 24/04/24.
//

import Foundation

struct Place: Codable, Hashable {
    var place,activity,price: String
}

extension Place {
    static let dummyData: [Place] = [
        Place (
            place: "Baso Damas",
            activity: "Eat meat balls",
            price: "150.000"
        )
    ]
}
