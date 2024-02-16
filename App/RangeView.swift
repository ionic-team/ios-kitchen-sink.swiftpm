/*
See the License.txt file for this sample’s licensing information.
*/

import SwiftUI

struct RangeView: View {
  @State private var defaultValue = 15.0
  @State private var stepValue = 50.0
  
  var body: some View {
    NavigationView {
      VStack {
        Text("Default").bold()
        Slider(
          value: $defaultValue,
          in: 0...100
        ) {
          Text("Speed")
        } minimumValueLabel: {
          Text("0")
        } maximumValueLabel: {
          Text("100")
        }
        .padding(.horizontal, 16)
        
        Text("Steps").bold()
        Slider(
          value: $stepValue,
          in: 0...100,
          step: 20
        ) {
          Text("Speed")
        } minimumValueLabel: {
          Text("0")
        } maximumValueLabel: {
          Text("100")
        }
        .padding(.horizontal, 16)
      }
    }
    .navigationBarTitle("Range", displayMode: .inline)
  }
}

struct RangeView_Previews: PreviewProvider {
  static var previews: some View {
    RangeView()
  }
}
