//Norah
import SwiftUI

struct HomePageView: View {
    
    @EnvironmentObject var bookingData: BookingData
    @Environment(\.locale) var locale
    
    var body: some View {
        NavigationStack{
            ZStack{
                Color.background1.ignoresSafeArea()
                ScrollView{
                    
               HeaderView()
                     Spacer()
                        .frame(height: 100)
                    
                    VStack(spacing: 32){
                        
                    
                        FromToView()
                        
                        HStack{
                            Image(systemName: "calendar")
                                .foregroundStyle(Color.green1)
                            
                            
                            
                            Text("choose")
                                .foregroundStyle(Color.green1)
                            
                            
                            Spacer()
                                .frame(width: 20)
                            
                            DatePicker(
                                "",
                                selection: $bookingData.date,
                                displayedComponents: [.date]
                            ).tint(Color.green1)
                                .frame(width:80)
                                .padding()
                            
                        } .background(RoundedRectangle(cornerRadius: 15)
                            .fill(.gray1)
                            .frame(width: 300,height: 50))
                        
                        
                        
                        HStack{
                            Image(systemName: "person")
                                .foregroundStyle(Color.green1)
                            
                            
                          Text("pass").foregroundStyle(Color.green1) + Text(" \(bookingData.passengers)")
                                .foregroundStyle(Color.green1)
                            
                            
                            Spacer()
                                .frame(width: 50)
                            
                            Stepper("", value: $bookingData.passengers ,in: 0...10)
                                .frame(width:80)
                        }.background(RoundedRectangle(cornerRadius: 15)
                            .fill(.gray1)
                            .frame(width: 300,height: 50))
                        
                        
                        
                       
                        
                        
                        NavigationLink(destination: TicketView()) {
                            Text("tr")
                                .foregroundStyle(Color.white1)
                                .padding()
                                .background(RoundedRectangle(cornerRadius: 15)
                                    .fill(.green1)
                                    .frame(width: 300,height: 50))
                        }
                        
                        
                        
                        
                    } .background(RoundedRectangle(cornerRadius: 25)
                        .fill(.white2)
                        .frame(width: 350,height: 400))
                    
                    
                }.ignoresSafeArea()
                
                //scrollview
            }//zstack
            
        }//navigation view
        .navigationBarBackButtonHidden(true)
    }
}
#Preview {
    HomePageView()
        .environmentObject(BookingData())
}
