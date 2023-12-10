//Sahar
import SwiftUI

struct MasterCardView: View {
    @State var cardNum: String = ""
    @State var cardDate: String = ""
    @State var name: String = ""
    @State var cardCode: String = ""
    @State var isSheetPresented: Bool = false
    @State var isclick1: Bool = false
    var body: some View {
        ZStack{
            VStack {

                ZStack{
                    RoundedRectangle(cornerRadius: 25.0)
                        .stroke(isclick1 ? Color.green1 :  Color.gray, lineWidth: 2)
                        .frame(width: 80, height: 80)
                        .shadow(radius: isclick1 ? 3 : 0)
                        Image("master").resizable()
                            .scaledToFit()
                            .frame(width: 70, height: 70)
                            .clipShape(RoundedRectangle(cornerRadius: 25.0))
                        Text("Master Card")
                            .font(.caption2)
                    
                }
                .onTapGesture {
                    isSheetPresented = true
                    isclick1.toggle()
                }
                .sheet(isPresented: $isSheetPresented){
                    VStack{
                        Text("")
                        TextField("Name", text: $name)
                            .padding()
                            .foregroundColor(.black)
                            .font(.title3)
                            .frame(width: 340,height: 60)
                            .background(RoundedRectangle(cornerRadius: 20).stroke(.gray, lineWidth: 1))
                        
                        TextField("Card Number", text: $cardNum)
                            .padding()
                            .foregroundColor(.black)
                            .font(.title3)
                            .frame(width: 340,height: 60)
                            .background(RoundedRectangle(cornerRadius: 20).stroke(.gray, lineWidth: 1))
                            .padding()
                        HStack(spacing: 20){
                            TextField("Y / M", text: $cardDate)
                                .padding()
                                .foregroundColor(.black)
                                .font(.title3)
                                .frame(width: 120,height: 50)
                                .background(RoundedRectangle(cornerRadius: 20).stroke(.gray, lineWidth: 1))
                            
                            
                            TextField("CVV", text: $cardCode)
                                .padding()
                                .foregroundColor(.black)
                                .font(.title3)
                                .frame(width: 120,height: 50)
                                .background(RoundedRectangle(cornerRadius: 20).stroke(.gray, lineWidth: 1))
                            
                        }
                        Button(action: {
                            
                        }) {
                            Text("Payment")
                                .font(.title3)
                                .frame(width: 300,height: 30)
                                .foregroundColor(.white)
                                .padding()
                                .background(Color.green1)
                            
                                .cornerRadius(20)
                        }.padding()
                        
                    }.presentationDetents([.medium])
                }
                .padding()
            }
            
        }
    }
}


#Preview {
    MasterCardView()
}
