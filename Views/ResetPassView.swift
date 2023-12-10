//Sahar
import SwiftUI
struct ResetPassView: View {
    @State var newPassword = ""
    @State var confirmPassword = ""
    @State private var showText: Bool = false
   
    var body: some View {
        NavigationStack{
                ZStack{
                    Color.background1
                        .ignoresSafeArea()
                    ScrollView{
                        HeaderView()
                    VStack{

                            Text("re1")
                                .bold()
                                .font(.title)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding()
                            ZStack{
                                RoundedRectangle(cornerRadius: 25.0).fill(.white2)
                                    .frame(maxWidth: .infinity)
                                    .frame(height: 300)
                                VStack(spacing: 20){
                                    
                                    HStack{
                                        Image(systemName: "lock")
                                            .foregroundColor(.gray)
                                        if showText {
                                            TextField("re2", text: $newPassword)
                                        } else {
                                            SecureField("re2", text: $newPassword)
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
                                    .frame(width: 340,height: 60)
                                    
                                    .background(
                                        RoundedRectangle(
                                            cornerRadius: 25,
                                            style: .continuous
                                        )
                                        .stroke(.gray)
                                    )
                                    HStack{
                                        Image(systemName: "lock")
                                            .foregroundColor(.gray)
                                        if showText {
                                            TextField("re3", text: $confirmPassword)
                                        } else {
                                            SecureField("re3", text: $confirmPassword)
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
                                    .frame(width: 340,height: 60)
                                    
                                    .background(
                                        RoundedRectangle(
                                            cornerRadius: 25,
                                            style: .continuous
                                        )
                                        .stroke(.gray)
                                    )
                                    NavigationLink(destination: SignInView() ){
                                        Text("re4")
                                            .font(.headline)
                                            .bold()
                                            .foregroundColor(.white)
                                            .padding()
                                            .frame(width: 340, height: 60)
                                            .background(Color.green1)
                                            .cornerRadius(25)
                                        
                                    }
                                }
                            }
                        }
                    }.ignoresSafeArea()
            }
        }.navigationBarBackButtonHidden(true)}}
#Preview {
    ResetPassView()
}
