//Sahar
import SwiftUI
import Lottie
struct SplashView: View {
    @State var isActive = false
    @State var size = 0.8
    @State var opacity = 0.5
    var body: some View {
        ZStack {
            if isActive {
                OnboardingView()
            }else{
                VStack{
                    Text("sp")
                        .foregroundStyle(Color.green1)
                        .font(.largeTitle)
                        .bold()
                    LottieView(animation: .named("train1"))
                        .playing()
                        .looping()
                }.scaleEffect(size)
                
                    .onAppear{
                        withAnimation(.easeIn(duration: 10)){
                            self.size = 0.9
                            
                        }
                    }
                
                
                    .onAppear{
                        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 4){
                            self.isActive = true
                        }
                    }
                
            }
        }
    }
}
#Preview {
    SplashView()
}
