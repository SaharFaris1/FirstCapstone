//Sahar
import SwiftUI
struct SignInView: View {
    @EnvironmentObject var signinData: SignInData
    @StateObject var vmm = AuthenticationViewModel()
    @State var isActive = false
    @State var email:String = ""
    @State var password:String = ""
    @State var invalidpassword = 0
    @State var invalidemail = 0
    @State private var showText: Bool = false
    @State var isPresent = false
    var body: some View {
        NavigationStack{
            ZStack{
                Color.background1
                    .ignoresSafeArea()
                ScrollView{
                    HeaderView()
                    VStack{
                        Text("si1")
                            .font(.title2)
                            .bold()
                          
                            
                        Text("si2")
                            .multilineTextAlignment(.center)
                        
                    }
                    .foregroundColor(.black1)
                    
                    ZStack{
                        RoundedRectangle(cornerRadius: 25.0)
                            .fill(Color.white2)
                            .frame(maxWidth: .infinity)
                            .frame(height: 350)
                        
                        VStack{
                            HStack{
                                Image(systemName: "envelope")
                                    .foregroundColor(.gray)
                                    .frame(width: 35, height: 35)
                                    .clipShape(RoundedRectangle(cornerRadius: 30))
                                TextField("si3", text: $signinData.email)

                                    .padding()
                            }
                            .foregroundColor(.black)
                            .padding()
                            .font(.title3)
                            .frame(width: 340, height: 60)
                            .background(
                                RoundedRectangle(cornerRadius: 25)
                                    .stroke(invalidemail == 0 ? Color.gray : Color.red, lineWidth: 1)
                            )
                            .padding(.bottom, 20)
                            .modifier(ShakeEffect(animatableData: CGFloat(invalidemail)))
                            
                            HStack{
                                Image(systemName: "lock")
                                    .foregroundColor(.gray)
                                if showText {
                                    TextField("si4", text: $signinData.password)
                                } else {
                                    SecureField("si4", text: $signinData.password)
                                }
                                Button(action: {
                                    showText.toggle()
                                }) {
                                    Image(systemName: showText ? "eye.fill" : "eye.slash.fill")
                                        .foregroundColor(.gray)
                                }
                            }
                            .foregroundColor(.black)
                            .padding()
                            .font(.title3)
                            .frame(width: 340, height: 60)
                            .background(
                                RoundedRectangle(cornerRadius: 25, style: .continuous)
                                    .stroke(Color.gray)
                            )
                            
                            Button(action: {
                                isPresent = true
                            }, label: {
                                Text("si5")
                                    .bold()
                                    .foregroundColor(.green1)
                                    .frame(maxWidth: .infinity, alignment: .trailing)
                            })
                            .fullScreenCover(isPresented : $isPresent){
                                ForgetView()
                            }
                            
                            Button(action: {
                                vmm.signIn(email: email, password: password)
                                isActive = true
                            }) {
                                Text("si6")
                                    .font(.headline)
                                    .bold()
                                    .foregroundColor(.white)
                                    .padding()
                                    .frame(width: 300, height: 50)
                                    .background(Color.green1)
                                    .cornerRadius(25)
                            }.fullScreenCover(isPresented:$isActive ) {
                                TabbedView()
                                    .environmentObject(BookingData())
                            }
                            .padding()
                            
                            HStack {
                                Text("si7")
                                    .foregroundColor(.black1)
                                NavigationLink(destination: SignUpView() ){
                                    
                                    Text("si8")
                                    
                                        .foregroundColor(.green1)
                                }
                            }
                        }
                        .padding()
                    }
                }
                .ignoresSafeArea()
            }
        }.navigationBarBackButtonHidden(true)
    }

    private func loginUser() {
        if signinData.email == "" {
            self.invalidemail += 1
            print("Email is required")
        } else if signinData.password == "" {
            self.invalidpassword += 1
            self.invalidemail = 0
            print("Password is required")
        } else {
            self.invalidpassword = 0
            print("Email: \(signinData.email) Password: \(signinData.password)")
        }
    }

    struct ShakeEffect : GeometryEffect {
        var travelDistance: CGFloat = 6
        var numOfShake: CGFloat = 4
        var animatableData: CGFloat
        
        func effectValue(size: CGSize) -> ProjectionTransform {
            ProjectionTransform(CGAffineTransform(translationX: travelDistance * sin(animatableData * .pi * numOfShake), y: 0))
        }
    }
    }
#Preview {
    SignInView()
        .environmentObject(SignInData())
        .environmentObject(SignUpData())
}
