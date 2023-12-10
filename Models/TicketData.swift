//Norah
import Foundation

struct TicketData: Identifiable {
    var id = UUID()
    var fromTime: String
    var ToTime: String
    var duration: String
 
}



var allTicket = [
    TicketData(fromTime: "6:00AM", ToTime: "6:10AM", duration: "10m"),
    TicketData(fromTime: "7:00AM", ToTime: "7:15AM", duration: "15m"),
    TicketData(fromTime: "8:00AM", ToTime: "8:10AM", duration: "10m"),
    TicketData(fromTime: "9:00AM", ToTime: "9:15AM", duration: "15m"),
    TicketData(fromTime: "10:00AM", ToTime: "10:10AM", duration: "10m"),
    TicketData(fromTime: "11:00AM", ToTime: "11:10AM", duration: "10m"),
    TicketData(fromTime: "12:00PM", ToTime: "12:10APM", duration: "10m"),
    TicketData(fromTime: "1:00PM", ToTime: "1:10APM", duration: "10m"),
    TicketData(fromTime: "2:00PM", ToTime: "2:10APM", duration: "10m"),
    TicketData(fromTime: "3:00PM", ToTime: "3:15APM", duration: "15m"),
    TicketData(fromTime: "4:00PM", ToTime: "4:10APM", duration: "10m"),
    TicketData(fromTime: "5:00PM", ToTime: "5:10APM", duration: "10m"),
    TicketData(fromTime: "6:00PM", ToTime: "6:10APM", duration: "10m"),
    TicketData(fromTime: "7:00PM", ToTime: "7:10APM", duration: "10m"),
    TicketData(fromTime: "8:00PM", ToTime: "8:10APM", duration: "10m"),
    TicketData(fromTime: "9:00PM", ToTime: "9:15APM", duration: "15m"),
    TicketData(fromTime: "10:00PM", ToTime: "10:10APM", duration: "10m"),
]
