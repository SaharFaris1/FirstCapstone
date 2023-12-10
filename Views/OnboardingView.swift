//Sahar
import Lottie
import SwiftUI
struct OnboardingPage: Identifiable{
    var id = UUID()
    var title: String
    var suptitle: String
}
struct OnboardingView: View {
    let onboarding: [OnboardingPage] = [
        OnboardingPage( title:NSLocalizedString("title1", comment: "any") , suptitle: NSLocalizedString("subtitle1", comment: "any")),
        OnboardingPage( title:NSLocalizedString("title2", comment: "any") , suptitle: NSLocalizedString("subtitle2", comment: "any")),
        OnboardingPage( title:NSLocalizedString("title3", comment: "any") , suptitle: NSLocalizedString("subtitle3", comment: "any")),
    ]
    @State var current = 0
    @State var isPresent = false
    @State var isPresent2 = false
    var body: some View {
        NavigationStack{
            ZStack{
                
                VStack{
                    
                    VStack{
                        LottieView(animation: .named("train1"))
                            .playing()
                            .looping()
                        TabView(selection: $current) {
                            ForEach(0..<3){ i in
                                VStack{
                                    
                                    Text(onboarding[i].title).font(.largeTitle).bold()
                                        .multilineTextAlignment(.center)
                                        .padding()
                                        .foregroundStyle(Color.green1)
                                    Text(onboarding[i].suptitle).font(.title2).multilineTextAlignment(.center).foregroundColor(.gray).bold()
                                }}
                        }
                        .tabViewStyle(.page(indexDisplayMode: .never))
                        .padding()
                        HStack {
                            ForEach(0..<3) { i in
                                if current == i {
                                    Circle()
                                        .foregroundColor(.green1)
                                        .frame(width: 10)
                                } else {
                                    Circle()
                                        .foregroundColor(.gray)
                                        .frame(width: 10)
                                }
                            }
                        }}
                    
                }.padding()
                
                
            }
            
            Button(action: {
                isPresent = true
            }, label:{
                ZStack{
                    HStack{
                        Image("img1")
                            .resizable()
                            .scaledToFit()
                        
                            .frame(height: 40)
                        
                            .background(.white)
                            .clipShape(Circle())
                        
                            .foregroundColor(.green1)
                        
                        Text("gs").font(.title3)
                            .padding()
                        Image(systemName: "chevron.forward").opacity(0.2)
                        Image(systemName: "chevron.forward").opacity(0.5)
                        Image(systemName: "chevron.forward")
                        
                    }}.padding()
                    .font(.headline)
                    .bold()
                    .foregroundColor(.white)
                    .padding()
                    .frame(width: 350, height: 60)
                    .background(Color.green1)
                    .cornerRadius(25)
            }) .fullScreenCover(isPresented : $isPresent){
                SignUpView()
                    .environmentObject(SignUpData())
            }
            HStack {
                Text("hav")
                    .foregroundColor(.black1)
                Button(action: {
                    isPresent2 = true
                }, label: {
                    Text("acc").bold()
                        .foregroundColor(.green1)
                        .padding()
                }).fullScreenCover(isPresented : $isPresent2){
                    SignInView()
                        .environmentObject(BookingData())
                        .environmentObject(SignUpData())
                        .environmentObject(SignInData())
                    
                }
            }
            
        }
        
    }
}

#Preview {
    OnboardingView()
}
