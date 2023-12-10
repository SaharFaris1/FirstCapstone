//Sahar
import SwiftUI
    
    struct EmojiView: View {
        @Binding var selectedEmoji: String
        let emojiText: String
        
        var body: some View {
            Button(action: {
                withAnimation(.spring(response: 0.3, dampingFraction: 0.5)) {
                    selectedEmoji = emojiText
                }
            }) {
                Text(emojiText)
                    .font(.callout)
            }
        }
    }
#Preview {
    EmojiView(selectedEmoji: .constant(""), emojiText: "")}

    
