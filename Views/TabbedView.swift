//Sahar
import SwiftUI
struct TabbedView: View {
    @State var selectedTab: Int = 0
    
    var body: some View {
        ZStack {
            Color.background1
                .ignoresSafeArea()
            
            ZStack(alignment: .bottom ){
                TabView(selection: $selectedTab) {
                    HomePageView()
                        .tag(0)
                        .environmentObject(BookingData())
                    
                    
                    RouteMapView()
                        .tag(1)
                    
                    ProfileView()
                        .tag(2)
                        .environmentObject(SignUpData())
                }
                
                CustomTabBar(selectedTab: $selectedTab)
                    
            }
            .edgesIgnoringSafeArea(.all)
        }
    }
}

struct TabbedView_Previews: PreviewProvider {
    static var previews: some View {
        TabbedView()
    }
}

struct CustomTabBar: View {
    @Binding var selectedTab: Int
    
    var body: some View {
        HStack {
            ForEach(TabbedItems.allCases, id: \.self) { item in
                Button(action: {
                    selectedTab = item.rawValue
                }) {
                    CustomTabItem(imageName: item.iconName, title: item.title, isActive: (selectedTab == item.rawValue))
                }
                .frame(maxWidth: .infinity)
            }
        }

        .frame(height: 80)
        .background(Color.white2)
        .cornerRadius(0)

    }
}

enum TabbedItems: Int, CaseIterable {
    case home = 0
    case map
    case profile
    
    var title: String {
        switch self {
        case .home:
            return NSLocalizedString("tap1", comment: "")
        case .map:
            return NSLocalizedString("tap2", comment: "")
        case .profile:
            return NSLocalizedString("tap3", comment: "")
        }
    }
    
    var iconName: String {
        switch self {
        case .home:
            return "house.fill"
       
        case .map:
            return "mappin.circle.fill"
        case .profile:
            return "person.fill"
        }
    }
}

struct CustomTabItem: View {
    var imageName: String
    var title: String
    var isActive: Bool
    
    var body: some View {
        VStack {
            Image(systemName: imageName)
                .font(.system(size: 24))
                .foregroundColor(isActive ? .green1 : .background1)
            Text(title)
                .font(.caption)
                .foregroundColor(isActive ? .green1 : .background1)
        }
    }
}
