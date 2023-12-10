
// sahar
import SwiftUI
import Foundation
class ProfileDatabase: ObservableObject{
    @Published var profiledatabase: [ProfileData]
    init() {
            profiledatabase = [
                ProfileData(id: UUID(), proImage: "creditcard.circle.fill", proText: NSLocalizedString("pr1", comment: "any"),  destination: MyTicketView(fromTime: "", toTime: "", duration: "", selectedSeats: [])),
                ProfileData(id: UUID(), proImage: "bell", proText: NSLocalizedString("pr2", comment: "any"),destination: NotificationView()),
                ProfileData(id: UUID(), proImage: "creditcard.circle.fill", proText: NSLocalizedString("pr3", comment: "any"), destination: FeedbackView()),
                ProfileData(id: UUID(), proImage: "questionmark.circle", proText: NSLocalizedString("pr4", comment: "any"), destination: HelpCenterView()),
                ProfileData(id: UUID(), proImage: "apple.terminal", proText: NSLocalizedString("pr5", comment: "any"), destination: TermsConditionView())
            ]
        }
    }
