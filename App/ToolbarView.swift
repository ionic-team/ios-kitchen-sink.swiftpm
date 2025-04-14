/*
See the License.txt file for this sample’s licensing information.
*/

import SwiftUI

struct ToolbarView: View {
  var body: some View {
    NavigationView {
      ScrollView {
        VStack(spacing: 20) {
          
          VStack(spacing: 10) {
            Text("Navigate to view toolbar")
              .bold()
          }
        }
      }
    }
    .navigationBarTitle("Really Long Long Long Long Long Toolbar", displayMode: .inline)
    .navigationBarItems(trailing:
        Button("Button") {
          print("Bar button!")
        }
    )
    .navigationBarItems(leading:
        Button("Back Button") {
          print("Bar button!")
        }
    )
  }
}

struct ToolbarView_Previews: PreviewProvider {
    static var previews: some View {
      ToolbarView()
    }
}
