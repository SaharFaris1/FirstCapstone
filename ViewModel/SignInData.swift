import SwiftUI
import Foundation


class SignInData: ObservableObject {
    @Published var email = ""
    @Published var password = ""
}

