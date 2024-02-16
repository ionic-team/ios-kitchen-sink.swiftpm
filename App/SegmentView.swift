/*
See the License.txt file for this sample’s licensing information.
*/

import SwiftUI

struct SegmentView: View {
  @State private var mode: Int = 0

  var body: some View {
    NavigationView {
      VStack {
        Text("Segment Example")
        .toolbar {
          ToolbarItemGroup(placement: .bottomBar) {

    
            Button("Start Long button") {
              print("Pressed")
            }
    
            Spacer()
            
            Picker("Phone", selection: $mode) {
              Text("All").tag(0)
              Text("Favorites").tag(1)
            }
            .pickerStyle(SegmentedPickerStyle())
            
            Spacer()
            
            Button("End") {
              print("Pressed")
            }
          }
        }
      }
    }
    .navigationBarTitle("Segment", displayMode: .inline)
  }
}

struct SegmentView_Previews: PreviewProvider {
    static var previews: some View {
      SegmentView()
    }
}
