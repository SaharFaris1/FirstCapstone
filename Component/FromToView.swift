//Norah

import SwiftUI

struct FromToView: View {
    @EnvironmentObject var bookingData: BookingData
    @Environment(\.locale) var locale
    


    
    var body: some View {
        HStack {
            Image(systemName: "tram")
                .foregroundStyle(Color.green1)
            
            Text("fr")
                .foregroundStyle(Color.green1)
            Spacer()
               
            Picker("Please choose a from station", selection: $bookingData.fromStation) {
                ForEach(allStations, id: \.self) { station in
                    Text(locale.language.languageCode?.identifier == "en" ? station.stationName : station.stationName)
                        .tag(station.stationName)
                }
            }.tint(Color.green1)
            
            

        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(.horizontal, 55)
        .background(
            RoundedRectangle(cornerRadius: 15)
                .fill(Color.gray1)
                .frame(width: 300, height: 50)
        )
        
        HStack {
            Image(systemName: "tram")
                .foregroundStyle(Color.green1)
            
            Text("to")
                .foregroundStyle(Color.green1)
            Spacer()
            
            Picker("Please choose a from station", selection: $bookingData.toStation) {
                ForEach(allStations, id: \.self) { station in
                    Text(locale.language.languageCode?.identifier == "en" ? station.stationName : station.stationName)
                        .tag(station.stationName)
                }
            }
            .tint(Color.green1)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(.horizontal, 55)
        .background(
            RoundedRectangle(cornerRadius: 15)
                .fill(Color.gray1)
                .frame(width: 300, height: 50)
        )
    }
}

// Preview is unchanged
#Preview {
    FromToView()
        .environmentObject(BookingData())
       
        
}


