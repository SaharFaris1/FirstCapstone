//Norah

import SwiftUI

struct TicketView: View {
    @EnvironmentObject var bookingData: BookingData
    
    @State var isPresentt = false
    
    //    @State var isClicked = false
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        NavigationStack{
            ZStack{
                Color.background1.ignoresSafeArea()
                VStack{
                    HeaderView()
                ScrollView{
                    VStack(spacing: 8){
                        
                        
                        ForEach(allTicket){ ticket in
                            NavigationLink(destination:  SeatSelcation(fromTime: ticket.fromTime, toTime: ticket.ToTime, duration:ticket.duration )){
                                VStack(spacing: 20){
                                    HStack{
                                        Text(self.bookingData.fromStation)
                                            .foregroundStyle(Color.green1)
                                        
                                        
                                        Image(systemName: "train.side.front.car")
                                            .foregroundStyle(Color.green1)
                                        
                                        
                                        Text(self.bookingData.toStation)
                                            .foregroundStyle(Color.green1)
                                    }.padding(8)
                                        .font(.caption)
                                    
                                    HStack{
                                        Text("\(ticket.fromTime) ")
                                            .foregroundStyle(Color.black1)
                                            .bold()
                                        Text("-------------------------")
                                            .foregroundStyle(Color.gray2)
                                        Text("\(ticket.ToTime)")
                                            .foregroundStyle(Color.black1)
                                            .bold()
                                    }
                                    
                                    HStack{
                                       Text("ti1").foregroundStyle(Color.black1) + Text(" \(ticket.duration)")
                                            .foregroundStyle(Color.black1)
                                        Spacer()
                                        Text("ti2").foregroundStyle(Color.black1) +
                                        Text(" \(formattedDate)")
                                            .foregroundStyle(Color.black1)
                                    }.font(.caption)
                                        .padding(.horizontal)
                                    
                                    Text("ti3")
                                        .foregroundStyle(Color.green1)
                                        .bold()
                                        .font(.callout)
                                    
                                }.background(RoundedRectangle(cornerRadius: 25)
                                    .fill(.white2)
                                    .frame(width: 380,height: 150))
                                
                            }
                        }
                    }
                    //scrollview
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
                    .foregroundColor(.white1)
            })
            )
            
                        
        
    }
    
    
    
    private var formattedDate: String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .short
        return dateFormatter.string(from: bookingData.date)
    }
}



#Preview {
    TicketView()
        .environmentObject(BookingData())
}
