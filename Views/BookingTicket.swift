//Norah
import SwiftUI

struct BookingTicket: View {
    let fromTime: String
    let toTime: String
    let duration: String
    let selectedSeats: [SeatData]
   
    
    @EnvironmentObject var bookingData: BookingData
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        NavigationStack{
            ZStack{
                Color.background1.ignoresSafeArea()
                ScrollView{
                    HeaderView()
            
                        
                        VStack(spacing: 20){
                            HStack{
                                Text(bookingData.fromStation)
                                    .foregroundStyle(Color.green1)
                                
                                
                                Image(systemName: "train.side.front.car")
                                    .foregroundStyle(Color.green1)
                                
                                
                                Text(bookingData.toStation)
                                    .foregroundStyle(Color.green1)
                            }.padding(8)
                                .font(.caption)
                            
                            HStack{
                                Text("\(fromTime) ")
                                    .foregroundStyle(Color.black1)
                                    .bold()
                                Text("-------------------------")
                                    .foregroundStyle(Color.gray2)
                                Text("\(toTime)")
                                    .foregroundStyle(Color.black1)
                                    .bold()
                            }
                            
                            HStack{
                               Text("ti1") + Text(" \(duration)")
                                    
                                Spacer()
                                Text("ti2") +  Text(" \(formattedDate)")
                                    
                            }.font(.caption)
                                .foregroundColor(.black1)
                                .padding(.horizontal)
                            
                            HStack{
                                Image(systemName: "chair.lounge.fill")
                                Text("  \(selectedSeats.map { $0.seat }.joined(separator: ", "))")
                                Spacer()
                                Text("ti3")
                                
                                    .bold()
                            }.foregroundStyle(Color.green1)
                                .padding(.horizontal)
                        }.background(RoundedRectangle(cornerRadius: 25)
                            .fill(.white2)
                            .frame(width: 380,height: 180))
                        .padding()
                        
                         Spacer()
                        .frame(height: 50)
                  
                    
                    NavigationLink(destination:  PaymentView(fromTime: fromTime, toTime: toTime, duration: duration, selectedSeats: selectedSeats)) {
                        Text("ti14")
                            .foregroundStyle(Color.white)
                            .padding()
                            .background(RoundedRectangle(cornerRadius: 15)
                                .fill(.green1)
                                .frame(width: 300,height: 50))
                    }
                   
                     
                }.ignoresSafeArea()
                //vstack
                    
                }//zstack
                    
                    
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
    
    //to format the date
    private var formattedDate: String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .short
        return dateFormatter.string(from: bookingData.date)
    }
}
                   
                   

#Preview {
    BookingTicket(fromTime: "", toTime: "", duration: "", selectedSeats: [])
        .environmentObject(BookingData())
}
