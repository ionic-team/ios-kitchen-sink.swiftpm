/*
See the License.txt file for this sample’s licensing information.
*/

import SwiftUI

struct AlertView: View {
  
  @State private var showBasicAlert: Bool = false
  @State private var showMultipleAlert: Bool = false
      
  var body: some View {
    NavigationView {
      VStack {
        Button("Basic Alert") {
          showBasicAlert = true
        }
        .buttonStyle(.borderedProminent)
        .controlSize(.large)
        .alert(isPresented: $showBasicAlert) {
          Alert(
            title: Text("A Short Title Is Best"),
            message: Text("A message should be a short, complete sentence.")
          )
        }
        
        Button("Multiple Buttons Alert") {
          showMultipleAlert = true
        }
        .buttonStyle(.borderedProminent)
        .controlSize(.large)
        .alert(isPresented: $showMultipleAlert) {
          Alert(
            title: Text("A Short Title Is Best"),
            message: Text("A message should be a short, complete sentence."),
            primaryButton: .default(
              Text("Open Modal test etst test teststest")
            ),
            secondaryButton: .destructive(
              Text("Delete")
            )
          )
        }
      }
    }.navigationBarTitle("Alert", displayMode: .inline)
  }
}

struct AlertView_Previews: PreviewProvider {
  static var previews: some View {
    AlertView()
  }
}
