/*
See the License.txt file for this sample’s licensing information.
*/

import SwiftUI

struct ListView: View {
  var body: some View {
    NavigationView {
      VStack {
        List {
          Section {
            Text("Item")
            Text("Item")
          } header: {
            Text("Inset")
          } footer: {
            Text("Footer")
          }
          .headerProminence(.increased)
        }
        .listStyle(.inset)
        
        List {
          Section {
            Text("Item")
            Text("Item")
          } header: {
            Text("Grouped")
          } footer: {
            Text("Footer")
          }
        }
        .listStyle(.grouped)
        
        List {
          Section {
            Text("Item")
            Text("Item")
          } header: {
            Text("Inset Grouped")
          } footer: {
            Text("Footer")
          }
        }
        .listStyle(.insetGrouped)
      }
    }
    .navigationBarTitle("List", displayMode: .inline)
  }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
      ListView()
    }
}
