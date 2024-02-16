/*
See the License.txt file for this sample’s licensing information.
*/

import SwiftUI

struct ContentView: View {
  var body: some View {
    NavigationView {
      List {
        NavigationLink("Alert") {
          AlertView()
        }
        NavigationLink("Button") {
          ButtonView()
        }
        NavigationLink("Date Picker") {
          DatePickerView()
        }
        NavigationLink("Item") {
          ItemView()
        }
        NavigationLink("List") {
          ListView()
        }
        NavigationLink("Range") {
          RangeView()
        }
        NavigationLink("Segment") {
          SegmentView()
        }
        NavigationLink("Tabs") {
          TabsView()
        }
        .navigationTitle("Kitchen Sink")
      }
    }
    .navigationViewStyle(.stack)
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
