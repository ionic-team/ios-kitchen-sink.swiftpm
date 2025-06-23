import SwiftUI

struct SheetModalView: View {
    @State private var showSheet = false

    var body: some View {
        VStack {
            Button("Show Bottom Sheet") {
                showSheet = true
            }
        }
        .sheet(isPresented: $showSheet) {
            BottomSheetView()
                .presentationDetents([
                    .fraction(0.25),
                    .medium,
                    .fraction(0.8),
                    .large
                ])
                .presentationDragIndicator(.visible)
                .presentationContentInteraction(.scrolls)
        }
    }
}

struct BottomSheetView: View {
    @Environment(\.dismiss) var dismiss

    var body: some View {
        VStack(spacing: 0) {
            // Fixed Header
            VStack {
                Text("Header")
                    .font(.headline)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color(UIColor.systemGray6))
            }

            Divider()

            // Scrollable Content
            ScrollView {
                VStack(spacing: 16) {
                    ForEach(1..<30) { i in
                        Text("Filler Content Row \(i)")
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding()
                            .background(Color(UIColor.secondarySystemBackground))
                            .cornerRadius(8)
                    }
                }
                .padding()
            }

            Divider()

            // Fixed Footer
            VStack {
                Button("Dismiss") {
                    dismiss()
                }
                .padding()
                .frame(maxWidth: .infinity)
            }
            .background(Color(UIColor.systemGray6))
        }
    }
}

struct SheetModalView_Previews: PreviewProvider {
    static var previews: some View {
        SheetModalView()
    }
}
