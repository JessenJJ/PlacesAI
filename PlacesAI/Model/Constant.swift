//
//  Constant.swift
//  PlacesAI
//
//  Created by User50 on 02/05/24.
//

import Foundation

struct Constant {

static let prompt = """
  Give me inspiration for nearest food destination with the type of food in jakarta
  Provide the response as an array of JSON as
  [
  
      {
          "place": "name",
          "activity": "activity",
          "price": "5.000"
      }
  
  ]
  
  only. Remove any backticks.
  
  """
}
