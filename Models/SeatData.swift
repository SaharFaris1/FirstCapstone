//Norah

import Foundation
import SwiftUI


struct SeatData: Identifiable {
    let id = UUID()
    var seat: String
    var image: String
    var backColor: Color
    var isSelectable: Bool
}


var allSeats = [
    SeatData(seat: "A1", image: "chair.lounge.fill", backColor: .white1, isSelectable: true),
    SeatData(seat: "A2", image: "chair.lounge.fill", backColor: .white1, isSelectable: true),
    SeatData(seat: "", image: "xmark", backColor: .green3, isSelectable: false),
    SeatData(seat: "A3", image: "chair.lounge.fill", backColor: .white1, isSelectable: true),
    SeatData(seat: "B4", image: "chair.lounge.fill", backColor: .white1, isSelectable: true),
    SeatData(seat: "B5", image: "chair.lounge.fill", backColor: .white1, isSelectable: true),
    SeatData(seat: "", image: "xmark", backColor: .green3, isSelectable: false),
    SeatData(seat: "B7", image: "chair.lounge.fill", backColor: .white1, isSelectable: true),
    SeatData(seat: "C8", image: "chair.lounge.fill", backColor: .white1, isSelectable: true),
    SeatData(seat: "C9", image: "chair.lounge.fill", backColor: .white1, isSelectable: true),
    SeatData(seat: "", image: "xmark", backColor: .green3, isSelectable: false),
    SeatData(seat: "C11", image: "chair.lounge.fill", backColor: .white1, isSelectable: true),
    SeatData(seat: "D12", image: "chair.lounge.fill", backColor: .white1, isSelectable: true),
    SeatData(seat: "D13", image: "chair.lounge.fill", backColor: .white1, isSelectable: true),
    SeatData(seat: "D14", image: "chair.lounge.fill", backColor: .white1, isSelectable: true),
    SeatData(seat: "E15", image: "chair.lounge.fill", backColor: .white1, isSelectable: true),
    SeatData(seat: "", image: "xmark", backColor: .green3, isSelectable: false),
    SeatData(seat: "", image: "xmark", backColor: .green3, isSelectable: false),
    SeatData(seat: "", image: "xmark", backColor: .green3, isSelectable: false),
    SeatData(seat: "F19", image: "chair.lounge.fill", backColor: .white1, isSelectable: true),
    SeatData(seat: "F20", image: "chair.lounge.fill", backColor: .white1, isSelectable: true),
    SeatData(seat: "F21", image: "chair.lounge.fill", backColor: .white1, isSelectable: true),
    SeatData(seat: "F22", image: "chair.lounge.fill", backColor: .white1, isSelectable: true),
    SeatData(seat: "G23", image: "chair.lounge.fill", backColor: .white1, isSelectable: true),
    SeatData(seat: "", image: "xmark", backColor: .green3, isSelectable: false),
    SeatData(seat: "", image: "xmark", backColor: .green3, isSelectable: false),
    SeatData(seat: "G26", image: "chair.lounge.fill", backColor: .white1, isSelectable: true),
    SeatData(seat: "H27", image: "chair.lounge.fill", backColor: .white1, isSelectable: true),
    SeatData(seat: "", image: "xmark", backColor: .green3, isSelectable: false),
    SeatData(seat: "", image: "xmark", backColor: .green3, isSelectable: false),
    SeatData(seat: "H30", image: "chair.lounge.fill", backColor: .white1, isSelectable: true),
    SeatData(seat: "J31", image: "chair.lounge.fill", backColor: .white1, isSelectable: true),
    SeatData(seat: "J32", image: "chair.lounge.fill", backColor: .white1, isSelectable: true),
    SeatData(seat: "J33", image: "chair.lounge.fill", backColor: .white1, isSelectable: true),
    SeatData(seat: "J34", image: "chair.lounge.fill", backColor: .white1, isSelectable: true),
    SeatData(seat: "", image: "xmark", backColor: .green3, isSelectable: false),
    SeatData(seat: "", image: "xmark", backColor: .green3, isSelectable: false),
    SeatData(seat: "K37", image: "chair.lounge.fill", backColor: .white1, isSelectable: true),
    SeatData(seat: "K38", image: "chair.lounge.fill", backColor: .white1, isSelectable: true),
    SeatData(seat: "L39", image: "chair.lounge.fill", backColor: .white1, isSelectable: true),
    SeatData(seat: "L40", image: "chair.lounge.fill", backColor: .white1, isSelectable: true),
    SeatData(seat: "", image: "xmark", backColor: .green3, isSelectable: false),
    SeatData(seat: "L42", image: "chair.lounge.fill", backColor: .white1, isSelectable: true),
    SeatData(seat: "L43", image: "chair.lounge.fill", backColor: .white1, isSelectable: true),
    
    
]
