//
//  Model.swift
//  PlacesAI
//
//  Created by User50 on 24/04/24.
//

import Foundation

struct Constant {
    static let APIkey = "AIzaSyDt1EIJIkrmiYlU9YnZC-mrZzkpfz2G01M"
    static let prompt = """
    Give me inspiration for activities that can be done during the day in the city of Sidney.
    Provide the response as an array of JSON as
    {
    
        [
            "place": "name",
            "activities": "activities",
            "price": "5.000",
        ]
    
    }
    
    only. Remove any backticks.
    
    """
}
