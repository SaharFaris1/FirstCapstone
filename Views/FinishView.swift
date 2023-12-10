
import SwiftUI
//Sahar
struct FinishView: View {
    @Environment(\.presentationMode) var presentationMode
    
    let fromTime: String
    let toTime: String
    let duration: String
    let selectedSeats: [SeatData]
    
    var body: some View{
        NavigationStack{
            ZStack{
                Color.background1
                    .ignoresSafeArea()
                ScrollView{
                    HeaderView()
                    VStack{
                        Image(systemName: "ticket")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 150, height: 150)
                            .foregroundColor(.green1)
                        Text("fi1")
                            .font(.title)
                            .bold()
                            .foregroundColor(.green1)
                        Text("fi2") .foregroundColor(.green1)
                        Text("fi3") .foregroundColor(.green1)
                       
                        NavigationLink(destination: MyTicketView(fromTime: fromTime, toTime: toTime, duration: duration, selectedSeats: selectedSeats)) {
                            Text("fi4")
                                .font(.title3)
                                .frame(width: 300,height: 25)
                                .foregroundColor(.white)
                                .padding()
                                .background(Color.green1)
                            
                                .cornerRadius(20)
                        }.padding()
                       
                        
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

        
        
    }}
#Preview {
    FinishView(fromTime: "", toTime: "", duration: "", selectedSeats: [])
        .environmentObject(BookingData())
}


