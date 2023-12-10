//Norah

import SwiftUI

struct SeatSelcation: View {
    let fromTime: String
    let toTime: String
    let duration: String
    
    @State private var selectedSeatIDs: Set<UUID> = Set()

    private let columns: [GridItem] = Array(repeating: .init(.flexible()), count: 4)

    var selectedSeats: [SeatData] {
        return allSeats.filter { selectedSeatIDs.contains($0.id) }
    }
    
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        NavigationStack{
            ZStack{
                Color.background1.ignoresSafeArea()
                
                VStack{
                   HeaderView()
                    HStack{
                        RoundedRectangle(cornerRadius: 5)
                            .fill(.green1)
                            .frame(width: 20, height: 20)
                        Text("sel1")
                            .foregroundStyle(Color.black1)
                        
                        RoundedRectangle(cornerRadius: 5)
                            .fill(.green3)
                            .frame(width: 20, height: 20)
                        Text("sel2")
                            .foregroundStyle(Color.black1)
                        
                        RoundedRectangle(cornerRadius: 5)
                            .fill(.white1)
                            .frame(width: 20, height: 20)
                        Text("sel3")
                            .foregroundStyle(Color.black1)
                        
                    }
                    
                    ScrollView{
                        
                        
                        LazyVGrid(columns: columns, spacing: 20) {
                            ForEach(allSeats) { seat in
                                VStack {
                                    Text(seat.seat)
                                    Image(systemName: seat.image)
                                }
                                .padding(8)
                                .frame(width: 60, height: 60)
                                .background(selectedSeatIDs.contains(seat.id) ? Color.green1 : seat.backColor)
                                .foregroundColor(selectedSeatIDs.contains(seat.id) ? .white1 : .green1)
                                .cornerRadius(16)
                                .onTapGesture {
                                    // Toggle the selection of this seat
                                    if seat.isSelectable {
                                        if selectedSeatIDs.contains(seat.id) {
                                            selectedSeatIDs.remove(seat.id)
                                        } else {
                                            selectedSeatIDs.insert(seat.id)
                                        }
                                    }
                                }
                            }
                            
                        }.background(RoundedRectangle(cornerRadius: 25.0)
                            .fill(.green2)
                            .frame(width: 380, height: 900)
                        )
                        .padding()
                        
                       
                    }//scrollview
                        
                    if !selectedSeatIDs.isEmpty {
                        Text("Selected Seats: \(selectedSeats.map { $0.seat }.joined(separator: ", "))")
                            .foregroundStyle(Color.green1)
                    } else {
                        Text("se16")
                            .foregroundStyle(Color.green1)
                    }
                    
                    NavigationLink(destination:  BookingTicket(fromTime: fromTime, toTime: toTime, duration: duration, selectedSeats: selectedSeats)) {
                            Text("sel4")
                                .foregroundStyle(Color.white1)
                                .padding()
                                .background(RoundedRectangle(cornerRadius: 15)
                                    .fill(.green1)
                                    .frame(width: 300,height: 50))
                        }
                        
                    
                    
                    
                }
            }//vstack
        }
        .navigationBarBackButtonHidden(true)
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
    SeatSelcation(fromTime: "", toTime: "", duration: "")
        .environmentObject(BookingData())
}
