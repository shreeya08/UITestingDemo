import SwiftUI

struct BottomSheetContentView: View {
    @State private var isBottomSheetPresented = true
    
    var body: some View {
        ZStack(alignment: .bottom) {
            Color.black.opacity(0.3).ignoresSafeArea()
            BottomSheetView(isPresented: $isBottomSheetPresented)
                .padding(.bottom, 42)
                .transition(.move(edge: .bottom))
                .background(
                    Color(uiColor: .white)
                )
                .cornerRadius(16, corners: [.topLeft, .topRight])
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
        .ignoresSafeArea()
        .animation(.easeInOut)
    }
}

struct BottomSheetView: View {
    @Binding var isPresented: Bool
    
    var body: some View {
        VStack(spacing: 16) {
            HStack {
                Image(systemName: "person.circle")
                    .resizable()
                    .frame(width: 40, height: 40)
                VStack(alignment: .leading, spacing: 4) {
                    Text("Name")
                        .font(.headline)
                    Text("Description")
                        .font(.subheadline)
                }
                Spacer()
                Button(action: {
                    self.isPresented = false
                }) {
                    Image(systemName: "xmark.circle")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .foregroundColor(.red)
                }
            }
            
            HStack(spacing: 16) {
                CustomItemView(label1: "Label 1", label2: "Value 1")
                Divider().frame(width: 1, height: 40).background(Color.gray) // Divider with background color
                CustomItemView(label1: "Label 2", label2: "Value 2")
                Divider().frame(width: 1, height: 40).background(Color.gray) // Divider with background color
                CustomItemView(label1: "Label 3", label2: "Value 3")
            }
        }
        .padding()
        .background(Color.white)
        .cornerRadius(16)
        .frame(maxWidth: .infinity)
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct CustomItemView: View {
    let label1: String
    let label2: String
    
    var body: some View {
        VStack(alignment: .center, spacing: 4) {
            Text(label1)
                .font(.headline)
            Text(label2)
                .font(.subheadline)
                .foregroundColor(.gray)
        }
        .frame(maxWidth: .infinity)
        .background(.white)
    }
}
