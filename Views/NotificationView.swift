//Sahar
import SwiftUI
struct NotificationView: View {
    @StateObject var viewModel = NotificationViewModel()
    @Environment(\.presentationMode) var presentationMode
       var body: some View {
           NavigationStack {
               ZStack {
                   Color.background1
                       .ignoresSafeArea()
                   ScrollView {
                       HeaderView()
                       Text("not7").font(.title).bold()
                       VStack(spacing:20) {
                           ForEach(viewModel.toggleStates.indices, id: \.self) { index in
                               ZStack {
                                   RoundedRectangle(cornerRadius: 10)
                                       .fill(Color.white2)
                                       .frame(maxWidth: .infinity)
                                       .frame(height: 70)
                                   
                                   HStack {
                                       Toggle(viewModel.toggleStates[index].title, isOn: $viewModel.toggleStates[index].isOn)
                                           .tint(Color.green1)
                                           .foregroundColor(.black1)
                                         
                                         
                                   }.padding()
                               }
                               
                           }
                       }.padding()
                   }
                   .ignoresSafeArea()
               }
           }.navigationBarBackButtonHidden(true)
               .navigationBarItems(leading:
                   Button(action: {
                       // Handle back button action here
                       presentationMode.wrappedValue.dismiss()
                   }, label: {
                       Image(systemName: "chevron.left")
                           .foregroundColor(.white1) // Change the color here
                   })
               )
           .onAppear {
               viewModel.loadToggleStates()
           }
          
       }
   }
#Preview {
    NotificationView()
}

