//Sahar
import SwiftUI

struct PaymentView: View {
    @StateObject var payment = PaymentViewModel()
    @Environment(\.presentationMode) var presentationMode
    
    let fromTime: String
    let toTime: String
    let duration: String
    let selectedSeats: [SeatData]
    
    var body: some View {
        NavigationStack{
            ZStack {

                ScrollView {
                    HeaderView()
                    VStack {
                        ZStack {
                            RoundedRectangle(cornerRadius: 25.0)
                                .stroke(Color.green1 , lineWidth: 1)
                                .frame(maxWidth: .infinity)
                                .frame(height: 100)
                            HStack {
                                Image(systemName: "exclamationmark.circle")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 30, height: 30)
                                    .foregroundColor(.red1)
                                    .frame(width: 50, height: 50)
                                    .background(Color.red1.opacity(0.2))
                                    .clipShape(Circle())
                                Text("pay1")
                                    .font(.callout)
                                    .multilineTextAlignment(.leading)
                            }
                        }
                        .padding()
                        HStack{
                            VisaView()
                            MasterCardView()
                            ApplePayView()
                        }
                        Spacer()
                            .padding()
                        
                        NavigationLink(destination: FinishView(fromTime: fromTime, toTime: toTime, duration: duration, selectedSeats: selectedSeats)) {
                            Text("pay2")
                                .font(.title3)
                                .frame(width: 300,height: 30)
                                .foregroundColor(.white)
                                .padding()
                                .background(Color.green1)
                            
                                .cornerRadius(20)
                        }
                    }.padding()
                }.ignoresSafeArea()
            }
        }.navigationBarBackButtonHidden(true)
            .navigationBarItems(leading:
                                    Button(action: {
                // Handle back button action here
                presentationMode.wrappedValue.dismiss()
            }, label: {
                Image(systemName: "chevron.left")
                    .foregroundColor(.white1) // Change the color here
            })
            )
    }
}

#Preview {
    PaymentView(fromTime: "", toTime: "", duration: "", selectedSeats: [])
        .environmentObject(BookingData())
}
