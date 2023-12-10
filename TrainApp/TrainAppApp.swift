
import SwiftUI

@main
struct TrainAppApp: App {
    
    
    var body: some Scene {
        WindowGroup {
            SplashView()
                .environmentObject(BookingData())
                .environmentObject(SignUpData())
                .environmentObject(SignInData())
        }
    }
}
