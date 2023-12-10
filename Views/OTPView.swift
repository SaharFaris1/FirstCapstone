//Norah
import SwiftUI
import Combine
struct OTPView: View {
    @State var num1 = ""
    @State var num2 = ""
    @State var num3 = ""
    @State var num4 = ""
    @State var isclick1: Bool = false
    @State var isclick2: Bool = false
    @State var isclick3: Bool = false
    @State var isclick4: Bool = false
    @State var isPresentt = false
    
    var body: some View {
        NavigationStack {
            
            ZStack {
                
                Color.background1
                    .ignoresSafeArea()
                
                ScrollView{
                    HeaderView()
                    
                    VStack {
                        
                        
                        
                        Text("ot1")
                            .bold()
                            .font(.title)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        Text("ot2")
                            .foregroundStyle(Color.gray)
                            .font(.title3)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        HStack {
                            
                            Button(action: {
                                isclick1.toggle()
                            }) {
                                ZStack {
                                    RoundedRectangle(cornerRadius: 15)
                                        .stroke(isclick1 ? Color.green1 :  Color.gray)
                                        .background(.white)
                                        .clipShape(RoundedRectangle(cornerRadius: 15))
                                        .frame(width: 70, height: 60)
                                    NumericTextField(text: $num1)
                                }
                            }
                            
                            
                            Button(action: {
                                isclick2.toggle()
                            }) {
                                ZStack {
                                    RoundedRectangle(cornerRadius: 15)
                                        .stroke(isclick2 ? Color.green1 :  Color.gray)
                                        .background(.white)
                                        .clipShape(RoundedRectangle(cornerRadius: 15))
                                        .frame(width: 70, height: 60)
                                    NumericTextField(text: $num2)
                                }
                            }
                            
                            // Third
                            Button(action: {
                                isclick3.toggle()
                            }) {
                                ZStack {
                                    RoundedRectangle(cornerRadius: 15)
                                        .stroke(isclick3 ? Color.green1 :  Color.gray)
                                        .background(.white)
                                        .clipShape(RoundedRectangle(cornerRadius: 15))
                                        .frame(width: 70, height: 60)
                                    NumericTextField(text: $num3)
                                }
                            }
                            
                            // Fourth
                            Button(action: {
                                isclick4.toggle()
                            }) {
                                ZStack {
                                    RoundedRectangle(cornerRadius: 15)
                                        .stroke(isclick4 ? Color.green1 :  Color.gray)
                                        .background(.white)
                                        .clipShape(RoundedRectangle(cornerRadius: 15))
                                        .frame(width: 70, height: 60)
                                    NumericTextField(text: $num4)
                                }
                            }
                        }
                        .padding()
                        NavigationLink(destination: ResetPassView() ){
                            Text("ot3")
                                .font(.headline)
                                .bold()
                                .foregroundColor(.white)
                                .padding()
                                .frame(width: 340, height: 60)
                                .background(Color.green1)
                                .cornerRadius(25)
                            
                        }
                        
                        HStack {
                            Text("ot4")
                            
                                .font(.title3)
                            
                            Button(action: {
                            }) {
                                Text("ot5")
                                    .foregroundStyle(Color.green1)
                            }
                        }
                    }.padding()
                    
                }.ignoresSafeArea()
            }
        }.navigationBarBackButtonHidden(true)
    }
}
struct NumericTextField: View {
    @Binding var text: String
    
    var body: some View {
        TextField("", text: $text)
            .keyboardType(.numberPad)
            .onReceive(Just(text)) { newString in
                let filtered = newString.filter { "0123456789".contains($0) }
                if filtered != newString {
                    self.text = filtered
                }
            }
    }
}
#Preview {
    OTPView()
}
