import Foundation
class MissionsSteps: Identifiable, Decodable {
    
    var id : UUID?
    var name: String
    var featured: Bool
    var image: String
    var time: String
    var description: String
    var material: [Materials]
    var directions: [String]
    
}


class Materials: Identifiable, Decodable {
    var id: UUID?//somethings listed in ingrediants (in json file is considered optional, still need a ? at the end

}
