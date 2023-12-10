//Sahar
import SwiftUI
struct FeedbackView: View {
    @Environment(\.presentationMode) var presentationMode
    let reactions = ["😣", "☹️", "🙂", "🤩"]
    @State private var selectedEmoji: String = ""
    @State private var text = ""
    var body: some View {
        NavigationStack{
            ZStack {
                Color("background1")
                    .ignoresSafeArea()
                ScrollView{
                    HeaderView()
                    Text("feed1").font(.title).bold()
                        .foregroundColor(.black1)
                    VStack {
                        
                        Text("feed2")
                            .font(.title)
                            .foregroundColor(.black1)
                            .padding()
                        
                        Divider()
                        
                        VStack {
                            Text("feed3")
                                .font(.title3)
                                .multilineTextAlignment(.center)
                                .foregroundColor(.black1)
                            Text("feed4")
                                .font(.title3)
                                .foregroundColor(.black1)
                            
                            HStack(alignment: .center, spacing: 10) {
                                ForEach(reactions, id: \.self) { reaction in
                                    ZStack {
                                        EmojiView(selectedEmoji: $selectedEmoji, emojiText: reaction)
                                            .frame(width: 50, height: 50)
                                            .background(Color.white)
                                            .overlay(
                                                Circle()
                                                    .stroke(Color.green1, lineWidth: selectedEmoji == reaction ? 6 : 0)
                                            )
                                            .cornerRadius(25)
                                            .shadow(radius: 3)
                                            .opacity(selectedEmoji == "" || selectedEmoji == reaction ? 1 : 0.5)
                                        
                                        if selectedEmoji == reaction {
                                            Image("check")
                                                .resizable()
                                                .frame(width: 30, height: 20)
                                            
                                        }
                                    }
                                }
                            }
                      
                            
                            if selectedEmoji != "" {
                                Text(getResponseWithEmoji(selectedEmoji))
                                    .font(.system(size: 17))
                                    .foregroundColor(Color.black1)
                            }
                        }
                        
                        
                        
                        Divider()
                        
                        VStack {
                            TextEditor(text: $text)
                                .frame(width: 300, height: 120)
                                .lineSpacing(10)
                                .autocapitalization(.words)
                                .disableAutocorrection(true)
                                .padding()
                        }
                        .overlay(
                            RoundedRectangle(cornerRadius: 25)
                                .stroke(Color.green1, lineWidth: 2)
                        )
                        .padding()
                        
                        Button(action: {
                        }) {
                            ZStack {
                                Capsule()
                                    .fill(Color.green1)
                                    .frame(width: 300, height: 60)
                                    .padding()
                                Text("feed5")
                                    .font(.title3)
                                    .foregroundColor(Color.white)
                            }
                            .opacity(selectedEmoji == "" ? 0.7 : 1)
                        }
                    }
                    
                    .frame(maxWidth: .infinity)
                    .background(Color.white2)
                    .cornerRadius(20)
                    .shadow(color: Color.init(red: 0, green: 0, blue: 0, opacity: 0.1), radius: 20, x: 10, y: 20)
                    .padding()
                }.ignoresSafeArea()
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
    }
    func getResponseWithEmoji(_ emoji: String) -> String {
        switch emoji {
        case "😣":
            return NSLocalizedString("feed6", comment: "")
        case "☹️":
            return NSLocalizedString("feed7", comment: "")
        case "🙂":
            return NSLocalizedString("feed8", comment: "")
        case "🤩":
            return NSLocalizedString("feed9", comment: "")
        default:
            return ""
        }
    }
    
}

#Preview {
    FeedbackView()
}





