//Sahar
import SwiftUI
struct SignUpView: View {
    @StateObject var vmm = AuthenticationViewModel()
    @State var email:String = ""
    @State var password:String = ""
    @State var isActive: Bool = false
    @State var isActive2: Bool = false
    @EnvironmentObject var signupData: SignUpData
    @State var showText: Bool = false
    var body: some View {
        NavigationStack{
            ZStack{
                Color.background1
                    .ignoresSafeArea()
                ScrollView{
                    HeaderView()
                    VStack{
                        Text("signupTitle")
                            .font(.title)
                            .bold()
                        Text("signupWel")
                            .font(.title2)
                    }.foregroundColor(.black1)
                       
                    
                    
                    ZStack{
                        RoundedRectangle(cornerRadius: 25.0)
                            .fill(.white2)
                            .frame(maxWidth: .infinity)
                            .frame(height: 400)
                        VStack{
                            HStack{
                                TextField("f1", text: $signupData.firstName)
                                    .foregroundColor(.black)
                                    .padding()
                                    .font(.title3)
                                    .frame(width: 160,height: 50)
                                    .background(RoundedRectangle(cornerRadius: 25).stroke(.gray, lineWidth: 1))
                                TextField("f2", text: $signupData.lastName)
                                    .foregroundColor(.black)
                                    .padding()
                                    .font(.title3)
                                    .frame(width: 160,height: 50)
                                    .background(RoundedRectangle(cornerRadius: 25).stroke(.gray, lineWidth: 1))
                            }
                            
                            HStack{
                                Image(systemName: "envelope")
                                    .foregroundColor(.gray)
                                    .frame(width: 35, height: 35)
                                
                                TextField("f3", text: $email)
                                
                                
                                
                            }.padding()
                                .foregroundColor(.black)
                            
                                .font(.title3)
                                .frame(width: 340,height: 50)
                                .background(RoundedRectangle(cornerRadius: 25).stroke(.gray, lineWidth: 1))
                                .padding()
                            
                            HStack{
                                Image(systemName: "lock")
                                    .foregroundColor(.gray)
                                if showText {
                                    TextField("f4", text: $password)
                                } else {
                                    SecureField("f4", text: $password)
                                }
                                Button(action: {
                                    showText.toggle()
                                }) {
                                    Image(systemName: showText ? "eye.fill" : "eye.slash.fill")
                                        .foregroundColor(.gray)
                                }
                            }.padding()
                                .foregroundColor(.black)
                            
                                .font(.title3)
                                .frame(width: 340,height: 50)
                            
                                .background(
                                    RoundedRectangle(
                                        cornerRadius: 25,
                                        style: .continuous
                                    )
                                    .stroke(.gray)
                                )
                        
                            
                            Button(action: {
                                vmm.signUp(email: email, password: password)
                                isActive = true
                            }) {
                                Text("f5")
                                    .font(.headline)
                                    .bold()
                                    .foregroundColor(.white)
                                    .padding()
                                    .frame(width: 300, height: 50)
                                    .background(Color.green1)
                                    .cornerRadius(25)
                            }.fullScreenCover(isPresented:$isActive ) {
                                TabbedView()
                                    .environmentObject(SignUpData())
                                    .environmentObject(BookingData())
                            }
                            .padding()
                            
                            HStack{
                                Text("f6")
                                    .foregroundColor(.black1)
                                Button(action: {
                                    isActive2 = true
                                        
                                    
                                }) {
                                    Text("f7")
                                        .foregroundColor(.green1)
                                }.fullScreenCover(isPresented:$isActive2 ) {
                                 SignInView()
                                        .environmentObject(BookingData())
                                        .environmentObject(SignUpData())
                                        .environmentObject(SignInData())
                                }
                            }
                         
                            
                            
                      
                        }
                    }.padding()
                    
                    
                    
                    
                    
                }.ignoresSafeArea()
                
            }
        }
        .navigationBarBackButtonHidden(true)
    }
    
    
}
#Preview {
    SignUpView()
        .environmentObject(SignUpData())
        .environmentObject(BookingData())
}
