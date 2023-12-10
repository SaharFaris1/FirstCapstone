//Norah
import Foundation
import SwiftUI

class BookingData:ObservableObject{
    
    @Published  var fromStation = ""
    @Published  var toStation = ""
    @Published  var date = Date()
    @Published  var passengers = 1
}
