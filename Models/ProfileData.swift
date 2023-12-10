//Sahar
import Foundation
import SwiftUI
struct ProfileData: Identifiable {
    var id: UUID
    var proImage: String
    var proText: String
    var destination: AnyView // Store the destination view type
    
    init<Destination: View>(id: UUID, proImage: String, proText: String, destination: Destination) {
        self.id = id
        self.proImage = proImage
        self.proText = proText
        self.destination = AnyView(destination)
    }
}
