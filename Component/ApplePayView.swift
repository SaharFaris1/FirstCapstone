//Sahar
import SwiftUI

struct ApplePayView: View {
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
                    HStack(spacing: 0.0){
                        Image(systemName:"apple.logo").resizable()
                            .scaledToFit()
                            .frame(width: 30, height: 30)
                            .clipShape(RoundedRectangle(cornerRadius: 25.0))
                        Text("Pay")
                            .font(.title2).bold()
                    }.foregroundStyle(Color.black1)
                }
                .onTapGesture {
                    isSheetPresented = true
                    isclick1.toggle()
                }
                .sheet(isPresented: $isSheetPresented){
                    VStack{
                        Button(action: {
                            
                        }) {
                            
                            
                            ZStack{
                                HStack{
                                    Image(systemName: "apple.logo")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 30, height: 30)
                                    Text("Payment")
                                        .font(.title2)
                                        .bold()
                                        
                                }.frame(width: 290,height: 30)
                                    .foregroundColor(.white)
                                    .padding()
                                    .background(Color.black)
                                
                                    .cornerRadius(20)
                            }
                        }
                    }.presentationDetents([.height(200)])
                }}
                
            }
            
        }
    }



#Preview {
    ApplePayView()
}
