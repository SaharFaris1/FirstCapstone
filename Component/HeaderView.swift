//Sahar
import SwiftUI

struct HeaderView: View {
    var body: some View {
        ZStack{
            UnevenRoundedRectangle(topLeadingRadius: 0, bottomLeadingRadius: 100, bottomTrailingRadius: 100, topTrailingRadius: 0).ignoresSafeArea()
                .foregroundColor(.green1)
                .frame(height: 150)
            
        }
    }
       }

#Preview {

        HeaderView()
    }


struct UnevenRoundedRectangle: Shape {
    var topLeadingRadius: CGFloat
    var bottomLeadingRadius: CGFloat
    var bottomTrailingRadius: CGFloat
    var topTrailingRadius: CGFloat
    
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.width
        let height = rect.height
        
        path.move(to: CGPoint(x: 0, y: topLeadingRadius))
        path.addLine(to: CGPoint(x: 0, y: height - bottomLeadingRadius))
        path.addArc(center: CGPoint(x: bottomLeadingRadius, y: height - bottomLeadingRadius), radius: bottomLeadingRadius, startAngle: Angle(degrees: 90), endAngle: Angle(degrees: 180), clockwise: false)
        path.addLine(to: CGPoint(x: width - bottomTrailingRadius, y: height))
        path.addArc(center: CGPoint(x: width - bottomTrailingRadius, y: height - bottomTrailingRadius), radius: bottomTrailingRadius, startAngle: Angle(degrees: 0), endAngle: Angle(degrees: 90), clockwise: false)
        path.addLine(to: CGPoint(x: width, y: topTrailingRadius))
        path.addArc(center: CGPoint(x: width - topTrailingRadius, y: topTrailingRadius), radius: topTrailingRadius, startAngle: Angle(degrees: 270), endAngle: Angle(degrees: 0), clockwise: false)
        path.addLine(to: CGPoint(x: topLeadingRadius, y: 0))
        path.addArc(center: CGPoint(x: topLeadingRadius, y: topLeadingRadius), radius: topLeadingRadius, startAngle: Angle(degrees: 180), endAngle: Angle(degrees: 270), clockwise: false)
        
        return path
    }
}
