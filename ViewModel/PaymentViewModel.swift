//Sahar
import SwiftUI
import Foundation
class PaymentViewModel: ObservableObject {
    @Published var payment: [PaymentData]
    
    init() {
        payment = [
            PaymentData(image: "master", payment: "Master Card"),
            PaymentData(image: "visa", payment: "VISA"),
            PaymentData(image: "pay", payment: "Apple Pay")
        ]
    }
     
    
}
