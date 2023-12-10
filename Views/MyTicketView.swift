//Norah
import SwiftUI

struct MyTicketView: View {
    
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
                                .foregroundStyle(Color.black1)
                            Spacer()
                            Text("ti2") +  Text(" \(formattedDate)")
                                .foregroundStyle(Color.black1)
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
                        
                        QRCodeView(url: "www.google.com")
                    }.background(RoundedRectangle(cornerRadius: 25)
                        .fill(.white2)
                        .frame(width: 380,height: 380))
                    .padding()
                    
                    
                    Spacer()
                        .frame(height: 50)
                    
                    NavigationLink(destination: HomePageView()
                        .environmentObject(BookingData())
                    ) {
                        Text("ti15")
                            .font(.title3)
                            .frame(width: 300,height: 25)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.green1)
                        
                            .cornerRadius(20)
                        
                    }
           }.ignoresSafeArea()
                //vstack
                
            }//zstack
            
            
        }.navigationBarBackButtonHidden(true)
            .navigationBarItems(leading:
                                    Button(action: {
                
                presentationMode.wrappedValue.dismiss()
            }, label: {
                Image(systemName: "chevron.left")
                    .foregroundColor(.white1)
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

struct MyTicketView_Previews: PreviewProvider {
    static var previews: some View {
        MyTicketView(fromTime: "", toTime: "", duration: "", selectedSeats: [])
            .environmentObject(BookingData())
            .environmentObject(SignUpData())
            .environmentObject(SignInData())
    }
}
