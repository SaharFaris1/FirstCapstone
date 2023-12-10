//Sahar
//Norah
import SwiftUI
import MapKit

struct RouteMapView: View {
    var body: some View {
        Map {
            
            ForEach(routes) { route in
                ForEach(route.stations) { station in
                    Annotation(station.nameEn, coordinate: station.location) {
                        ZStack {
                            Circle()
                                .fill(route.color)
                            Image(systemName: "tram")
                                
                                
                        }
                    }

                }
                MapPolyline(coordinates: route.stations.map({ $0.location }))
                    .stroke(route.color,lineWidth: 5)
            }
        }
        
    }
}



#Preview {
    RouteMapView()
        .environmentObject(BookingData())
        .environmentObject(SignUpData())
        .environmentObject(SignInData())
}
