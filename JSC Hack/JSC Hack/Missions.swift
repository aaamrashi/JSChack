//
//  Missions.swift
//  JSC Hack
//
//  Created by Isaac Tijerina on 1/29/22.
//

import Foundation

class Missions: ObservableObject {
    
    @Published var recipes = [MissionsSteps]()
    
    init() {
        // Create an instance of data service and get the data
        recipes = DataServices.getLocalData()
    }
    
//    required init(from decoder:Decoder) throws {
//        let values = try decoder.container(keyedBy: <#_.Type#>)
//        self.recipes = try values.decode([Missions].self, forKey: .recipies)
//        }
    
}
