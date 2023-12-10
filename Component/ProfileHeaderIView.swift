//Sahar
import SwiftUI
import PhotosUI
struct ProfileHeaderIView: View {
    @EnvironmentObject var signupData: SignUpData
       @State private var imageItem: PhotosPickerItem?
       @State private var image: Image?
       @State private var isPickerPresented = false

    var body: some View {
        ZStack{
            VStack{
                HeaderView()
                
                
                             if let image = image {
                                 image
                                     .resizable()
                                     .scaledToFit()
                                     .frame(width: 100, height: 50)
                                     .background(
                                         Circle()
                                            .frame(width: 100, height: 90)
                                         )
                             } else {
                                 Image(systemName: "person")
                                     .resizable()
                                     .scaledToFit()
                                     .frame(width: 100, height: 50)
                                     .foregroundColor(.white)
                                     .background(
                                         Circle()
                                             .fill(Color.gray)
                                             .frame(width: 100, height: 90)
                                     )
                             }
                Menu {
                                   Button(action: {}) {
                                       HStack {
                                           Image(systemName: "square.and.pencil")
                                           Text("Edit Profile")
                                       }
                                   }
                                   
                                   Button(action: {
                                       isPickerPresented = true
                                   }) {
                                       HStack {
                                           Image(systemName: "photo.on.rectangle.angled")
                                           Text("Change picture")
                                       }
                                   }
                               } label: {
                                   ZStack {
                                       RoundedRectangle(cornerRadius: 25.0)
                                           .stroke(Color.gray, lineWidth: 1)
                                           .fill(Color.green1)
                                           .frame(width: 100, height: 40)
                                       
                                       HStack {
                                           Image(systemName: "square.and.pencil")
                                           Text("Edit")
                                       }
                                       .foregroundColor(.white)
                                   }
                               }
                               
                               HStack {
                                   Text(signupData.firstName)
                                   Text(signupData.lastName)
                               }
                           }
                       }
                       .sheet(isPresented: $isPickerPresented) {
                           ImagePickerView(image: $image)
                       }
                   }
               }
#Preview {
    ProfileHeaderIView()
        .environmentObject(SignUpData())
}
struct ImagePickerView: UIViewControllerRepresentable {
    @Binding var image: Image?
    
    func makeUIViewController(context: Context) -> PHPickerViewController {
        var configuration = PHPickerConfiguration()
        configuration.filter = .images
        configuration.selectionLimit = 1
        
        let picker = PHPickerViewController(configuration: configuration)
        picker.delegate = context.coordinator
        return picker
    }
    
    func updateUIViewController(_ uiViewController: PHPickerViewController, context: Context) {}
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    class Coordinator: NSObject, PHPickerViewControllerDelegate {
        let parent: ImagePickerView
        
        init(_ parent: ImagePickerView) {
            self.parent = parent
        }
        
        func picker(_ picker: PHPickerViewController, didFinishPicking results: [PHPickerResult]) {
            picker.dismiss(animated: true)
            
            guard let selectedImage = results.first else {
                return
            }
            
            selectedImage.itemProvider.loadObject(ofClass: UIImage.self) { object, error in
                if let error = error {
                    print("Error loading image: \(error.localizedDescription)")
                } else if let uiImage = object as? UIImage {
                    DispatchQueue.main.async {
                        self.parent.image = Image(uiImage: uiImage)
                    }
                }
            }
        }
    }
}
