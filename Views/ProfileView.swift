//Sahar
import SwiftUI
struct ProfileView: View {
    @StateObject var profile = ProfileDatabase()
 var body: some View {
        NavigationStack{
            ZStack{
                Color.background1
                    .ignoresSafeArea()
                ScrollView{
                    ProfileHeaderIView()
                    VStack{
                        ForEach(profile.profiledatabase) { pro in
                            NavigationLink(destination: pro.destination) {
                                ZStack {
                                    RoundedRectangle(cornerRadius: 25.0)
                                        .fill(Color.white2)
                                        .frame(maxWidth: .infinity)
                                        .frame(height: 70)
                                    
                                    HStack {
                                        Image(systemName: pro.proImage)
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 25, height: 25)
                                            .foregroundColor(.white)
                                            .background(
                                                Circle()
                                                    .fill(Color.gray)
                                                    .frame(width: 40, height: 40)
                                            ).padding()
                                        
                                        Text(pro.proText)
                                            .font(.title3)
                                            .foregroundStyle(Color.black1)
                                        
                                  
                                            .padding()
                                        Spacer()
                                       
                                    }
                                    .padding()
                                }
                            }
                        }
                    }.padding()
                }.ignoresSafeArea()
            }
        }
        .foregroundColor(.black)
        .navigationBarBackButtonHidden(true)
        .navigationBarTitleDisplayMode(.inline)
        .navigationViewStyle(StackNavigationViewStyle())
    }
}




struct HelpCenterView: View {
    var body: some View {
        Text("Help Center View")
    }
}

struct TermsConditionView: View {
    var body: some View {
        Text("Terms & Condition View")
    }
}

#Preview {
    ProfileView()
        .environmentObject(BookingData())
        .environmentObject(SignUpData())
        .environmentObject(SignInData())
       
}
