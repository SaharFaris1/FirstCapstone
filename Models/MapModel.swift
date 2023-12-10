//Norah
//Sahar
import Foundation
import MapKit
import struct SwiftUI.Color


struct Route: Identifiable {
    let id: UUID = .init()
    let stations: Array<Station>
    let color: Color
}

struct Station: Identifiable {
    let id: UUID = .init()
    let nameEn: String
    let location: CLLocationCoordinate2D
}

let routes: Array<Route> = [
    Route(

        stations: [
            Station(nameEn: NSLocalizedString("map1", comment: "any"), location: CLLocationCoordinate2D(latitude: 24.717069, longitude: 46.638853)),
            Station(nameEn:NSLocalizedString("map2", comment: "any"), location: CLLocationCoordinate2D(latitude: 24.726639, longitude: 46.666793)),
            Station(nameEn: NSLocalizedString("map3", comment: "any"), location: CLLocationCoordinate2D( latitude:  24.740873, longitude: 46.693431)),
            Station(nameEn: NSLocalizedString("map4", comment: "any"),location: CLLocationCoordinate2D( latitude:  24.767532, longitude: 46.757866)),
            Station(nameEn: NSLocalizedString("map5", comment: "any"),location: CLLocationCoordinate2D( latitude:  24.776439, longitude: 46.777053)),
            Station(nameEn: NSLocalizedString("map6", comment: "any"),location: CLLocationCoordinate2D( latitude:  24.792213, longitude: 46.810666)),
        ],
        color: .red
    ),
    
    Route(
    
        stations: [
            Station(nameEn: NSLocalizedString("map7", comment: "any"),location: CLLocationCoordinate2D( latitude:  24.740873, longitude: 46.693431)),
            Station(nameEn: NSLocalizedString("map8", comment: "any"), location: CLLocationCoordinate2D(latitude:  24.697572, longitude: 46.718044)),
            Station(nameEn: NSLocalizedString("map9", comment: "any"), location: CLLocationCoordinate2D(latitude:  24.676010, longitude: 46.718380)),
            Station(nameEn:NSLocalizedString("map10", comment: "any"), location: CLLocationCoordinate2D(latitude:  24.667558, longitude: 46.718354)),
            Station(nameEn: NSLocalizedString("map11", comment: "any"), location: CLLocationCoordinate2D(latitude:  24.663829, longitude: 46.718117)),
            Station(nameEn:NSLocalizedString("map12", comment: "any"), location: CLLocationCoordinate2D(latitude:  24.651258, longitude: 46.716194)),
            Station(nameEn: NSLocalizedString("map13", comment: "any"),location: CLLocationCoordinate2D( latitude:  24.645972, longitude: 46.714132)),
        ],color: .green

    
    ),
    Route(
    
        stations: [
            Station(nameEn:NSLocalizedString("map14", comment: "any"), location: CLLocationCoordinate2D(latitude: 24.600042, longitude: 46.554915)),
            Station(nameEn: NSLocalizedString("map15", comment: "any"), location: CLLocationCoordinate2D(latitude: 24.585505, longitude: 46.559565)),
            Station(nameEn: NSLocalizedString("map16", comment: "any"), location: CLLocationCoordinate2D(latitude: 24.582269, longitude: 46.614376)),
            Station(nameEn: NSLocalizedString("map17", comment: "any"),location: CLLocationCoordinate2D( latitude: 24.600446, longitude: 46.643905)),
            Station(nameEn: NSLocalizedString("map18", comment: "any"),location: CLLocationCoordinate2D( latitude: 24.618352, longitude: 46.697723)),
            Station(nameEn: NSLocalizedString("map19", comment: "any"),location: CLLocationCoordinate2D( latitude: 24.627009, longitude: 46.712529)),
            Station(nameEn:NSLocalizedString("map20", comment: "any"), location: CLLocationCoordinate2D(latitude: 24.629125, longitude: 46.715990)),
            Station(nameEn:NSLocalizedString("map21", comment: "any"),location: CLLocationCoordinate2D( latitude: 24.631813, longitude: 46.720934)),
            Station(nameEn: NSLocalizedString("map22", comment: "any"),location: CLLocationCoordinate2D( latitude: 24.634037, longitude: 46.725676)),
            Station(nameEn: NSLocalizedString("map23", comment: "any"), location: CLLocationCoordinate2D(latitude: 24.644683, longitude: 46.739232)),
            Station(nameEn: NSLocalizedString("map24", comment: "any"), location: CLLocationCoordinate2D(latitude: 24.648079, longitude: 46.742810)),
            Station(nameEn: NSLocalizedString("map25", comment: "any"),location: CLLocationCoordinate2D( latitude: 24.660921, longitude: 46.742862)),
            Station(nameEn:NSLocalizedString("map26", comment: "any"),location: CLLocationCoordinate2D( latitude: 24.672985, longitude: 46.760318)),
            Station(nameEn: NSLocalizedString("map27", comment: "any"),location: CLLocationCoordinate2D( latitude: 24.680111, longitude: 46.779173)),
            Station(nameEn: NSLocalizedString("map28", comment: "any"), location: CLLocationCoordinate2D(latitude: 24.686403, longitude: 46.796772)),
            Station(nameEn: NSLocalizedString("map29", comment: "any"),location: CLLocationCoordinate2D( latitude: 24.722073, longitude: 46.861152)),
        ],color: .orange

    
    ),
    Route(
        
        stations: [
            Station(nameEn:NSLocalizedString("map30", comment: "any"),location: CLLocationCoordinate2D( latitude: 24.84136434937577, longitude: 46.608732467752525)),
            Station(nameEn: NSLocalizedString("map31", comment: "any"), location: CLLocationCoordinate2D(latitude: 24.811513196741544, longitude: 46.62561392071217)),
            Station(nameEn: NSLocalizedString("map32", comment: "any"), location: CLLocationCoordinate2D(latitude: 24.82955277755284, longitude: 46.62561392071217)),
            Station(nameEn: NSLocalizedString("map33", comment: "any"),location: CLLocationCoordinate2D( latitude: 24.74314347608369, longitude: 46.66013231754721)),
            
            Station(nameEn:NSLocalizedString("map34", comment: "any"), location: CLLocationCoordinate2D(latitude: 24.726560, longitude: 46.667016)),
            
            Station(nameEn: NSLocalizedString("map35", comment: "any"), location: CLLocationCoordinate2D(latitude: 24.69669514871981, longitude: 46.684305200022784)),
            
            Station(nameEn: NSLocalizedString("map36", comment: "any"), location: CLLocationCoordinate2D(latitude: 24.68972187598675, longitude: 46.687397147761125)),
            
            Station(nameEn: NSLocalizedString("map37", comment: "any"), location: CLLocationCoordinate2D(latitude: 24.67435183990925, longitude: 46.69493996209193)),
            
            Station(nameEn: NSLocalizedString("map38", comment: "any"), location: CLLocationCoordinate2D(latitude: 24.664794749194076, longitude: 46.702614723471534)),
            
            Station(nameEn: NSLocalizedString("map39", comment: "any"), location: CLLocationCoordinate2D(latitude: 24.659257258202626, longitude: 46.704452288787344)),
            
            Station(nameEn: NSLocalizedString("map40", comment: "any"), location: CLLocationCoordinate2D(latitude: 24.646892429665222, longitude: 46.713840876791316)),
            
            Station(nameEn:NSLocalizedString("map41", comment: "any"),location: CLLocationCoordinate2D( latitude: 24.638608921902996, longitude: 46.71484876456254)),
            
            Station(nameEn: NSLocalizedString("map42", comment: "any"), location: CLLocationCoordinate2D(latitude: 24.628692432895264, longitude: 46.716229586686715)),
            
            Station(nameEn: NSLocalizedString("map43", comment: "any"), location: CLLocationCoordinate2D(latitude: 24.625343436331065, longitude: 46.721178139744175)),
            
            
            Station(nameEn:NSLocalizedString("map44", comment: "any"), location: CLLocationCoordinate2D(latitude: 24.619318553336058, longitude: 46.72497844477817)),
            
            Station(nameEn: NSLocalizedString("map45", comment: "any"), location: CLLocationCoordinate2D(latitude: 24.612022713148555, longitude: 46.7272522366648)),
            
            Station(nameEn:NSLocalizedString("map46", comment: "any"), location: CLLocationCoordinate2D(latitude: 24.601094449080428, longitude: 46.73580354335296)),
            
            Station(nameEn: NSLocalizedString("map47", comment: "any"), location: CLLocationCoordinate2D(latitude: 24.59854646984917, longitude: 46.7449993942468)),
            
            Station(nameEn: NSLocalizedString("map48", comment: "any"), location: CLLocationCoordinate2D(latitude: 24.587393514581162, longitude: 46.76076028197915)),
            
            Station(nameEn: NSLocalizedString("map49", comment: "any"),location: CLLocationCoordinate2D( latitude: 24.5606473800228, longitude: 46.776029762154046)),
        ],color: .blue

    
    ),
    Route(
        
        stations: [
            Station(nameEn: NSLocalizedString("map50", comment: "any"), location: CLLocationCoordinate2D(latitude: 24.767353268220504, longitude: 46.643110152375165)),
            
            Station(nameEn: NSLocalizedString("map51", comment: "any"), location: CLLocationCoordinate2D(latitude: 24.78658843064787, longitude: 46.66015703695122)),
            
            Station(nameEn:NSLocalizedString("map52", comment: "any"),location: CLLocationCoordinate2D( latitude: 24.801414908500053, longitude: 46.695917684625734)),
            
            Station(nameEn:NSLocalizedString("map53", comment: "any"), location: CLLocationCoordinate2D(latitude: 24.801230196675206, longitude: 46.69434377900207)),
            
            Station(nameEn: NSLocalizedString("map54", comment: "any"), location: CLLocationCoordinate2D(latitude: 24.842297677954598, longitude: 46.72354824443172)),
            
            Station(nameEn: NSLocalizedString("map55", comment: "any"), location: CLLocationCoordinate2D(latitude: 24.86100699367883, longitude: 46.7045101953863)),
            
            Station(nameEn: NSLocalizedString("map56", comment: "any"),location: CLLocationCoordinate2D( latitude: 24.941226287182324, longitude: 46.71001662489097)),
            
            Station(nameEn: NSLocalizedString("map57", comment: "any"), location: CLLocationCoordinate2D(latitude: 24.95803501814582, longitude: 46.70164038730828)),
        ],color: .yellow

    
    ),
    Route(
        
        stations: [
            
            Station(nameEn: NSLocalizedString("map58", comment: "any"), location: CLLocationCoordinate2D(latitude: 24.767353268220504, longitude: 46.643110152375165)),
            
            Station(nameEn:NSLocalizedString("map59", comment: "any"), location: CLLocationCoordinate2D(latitude: 24.78658843064787, longitude: 46.66015703695122)),
            
            Station(nameEn: NSLocalizedString("map60", comment: "any"), location: CLLocationCoordinate2D(latitude: 24.801414908500053, longitude: 46.695917684625734)),
            
            Station(nameEn:NSLocalizedString("map61", comment: "any"), location: CLLocationCoordinate2D(latitude: 24.78668394120353, longitude: 46.72917597763044)),
            
            Station(nameEn: NSLocalizedString("map62", comment: "any"),location: CLLocationCoordinate2D( latitude: 24.79006831632359, longitude: 46.76703413782339)),
            
            Station(nameEn: NSLocalizedString("map63", comment: "any"), location: CLLocationCoordinate2D(latitude: 24.756967022979076, longitude: 46.79003890215952)),
            
            Station(nameEn:NSLocalizedString("map64", comment: "any"),location: CLLocationCoordinate2D( latitude: 24.722904980099248, longitude: 46.81108551291923)),
            
            Station(nameEn: NSLocalizedString("map65", comment: "any"),location: CLLocationCoordinate2D( latitude: 24.700504980701567, longitude: 46.827568702014084)),
        ],color: .purple

    
    )
    
    
    
    
]




