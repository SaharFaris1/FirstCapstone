//Sahar
import SwiftUI
import Foundation
class NotificationViewModel: ObservableObject {
    @Published var toggleStates = [
        NotificationData(title: NSLocalizedString("not1", comment: "any"), isOn: false),
        NotificationData(title: NSLocalizedString("not2", comment: "any"), isOn: false),
        NotificationData(title:NSLocalizedString("not3", comment: "any"), isOn: false),
        NotificationData(title: NSLocalizedString("not5", comment: "any"), isOn: false),
        NotificationData(title: NSLocalizedString("not6", comment: "any"), isOn: false)
    ]
    
    func loadToggleStates() {
     
    }
    
    func saveToggleStates() {
     
    }
}
