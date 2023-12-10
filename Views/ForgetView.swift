
import SwiftUI

//Sahar
struct ForgetView: View {
    @State var emaill: String = ""

    var body: some View {
        NavigationStack{
            ZStack{
                Color.background1
                    .ignoresSafeArea()
                ScrollView{
              
                    HeaderView()
                    VStack{
          
                        Text("for1")
                            .font(.title).frame(maxWidth: .infinity, alignment: .leading).bold()
                        Text("for2")
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .font(.title3)
                        ZStack{
                            RoundedRectangle(cornerRadius: 25.0).fill(.white2)
                                .frame(maxWidth: .infinity)
                                .frame(height: 200)
                            VStack{
                                HStack{
                                    Image(systemName: "envelope")
                                        .foregroundColor(.gray)
                                        .frame(width: 35, height: 35)
                                        .clipShape(RoundedRectangle(cornerRadius: 25))
                                    TextField("si3", text: $emaill)
                                }.padding()
                                    .foregroundColor(.black)
                                
                                    .font(.title3)
                                    .frame(width: 340,height: 60)
                                    .background(RoundedRectangle(cornerRadius: 25).stroke(.gray, lineWidth: 1))
                                    .padding()
                                NavigationLink(destination: OTPView() ){
                                    Text("for3")
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
                    }.padding()
                }.ignoresSafeArea()
            }
        }.navigationBarBackButtonHidden(true)
    }}

#Preview {
    ForgetView()
}
