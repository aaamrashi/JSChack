
import Foundation

class DataServices {
    
    static func getLocalData() -> [MissionsSteps] {
        
        // Parse local json file
        
        // Get a url path to the json file
        let pathString = Bundle.main.path(forResource: "activities_gradesk-4", ofType: "json")
        
        // Check if pathString is not nil, otherwise...
        guard pathString != nil else {
            return [MissionsSteps]()
        }
        
        // Create a url object
        let url = URL(fileURLWithPath: pathString!)
        
        do {
            // Create a data object
            let data = try Data(contentsOf: url)
            
            // Decode the data with a JSON decoder
            let decoder = JSONDecoder()
            
            do {
                
                let missionsData = try decoder.decode([MissionsSteps].self, from: data)
                
                // Add the unique IDs
//                for r in missionsData {
//                    r.id = UUID()
//                    
//                    // Add unique IDs to recipe ingredients
//                    for i in r.material {
//                        i.id = UUID()
//                    }
//                }
                
                // Return the recipes
                return missionsData
            }
            catch {
                // error with parsing json
                print(error)
            }
        }
        catch {
            // error with getting data
            print(error)
        }
        
        return [MissionsSteps]()
    }
    
}


