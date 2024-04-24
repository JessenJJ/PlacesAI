//
//  Place.swift
//  PlacesAI
//
//  Created by User50 on 24/04/24.
//

import Foundation

struct Place: Codable {
    var place,activity,price: String
}

extension Place {
    static let dummyData: [Place] = [
        Place (
            place: "Baso DashRun",
            activity: "Eat meat balls",
            price: "150.000"
        )
    ]
}
