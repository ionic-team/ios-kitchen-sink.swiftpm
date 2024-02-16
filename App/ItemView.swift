/*
See the License.txt file for this sample’s licensing information.
*/

import SwiftUI

struct ItemView: View {
  struct Item: Identifiable {
      let image: String
      let id = UUID()
  }

  private var items = [
    Item(image: "globe"),
    Item(image: "trash"),
    Item(image: "folder"),
  ]

  var body: some View {
    NavigationView {
      VStack {
        List {
          Section {
            ForEach(0 ..< 3) { item in
              Text("Item")
            }
          } header: {
            Text("Text")
          }
          .headerProminence(.increased)
        }
        .listStyle(.inset)
        
        List {
          Section {
            ForEach(items) { item in
              HStack {
                Image(systemName: item.image)
                  .imageScale(.large)
                  .foregroundStyle(.tint)
                Text("Item")
              }
            }
          } header: {
            Text("Icons")
          }
          .headerProminence(.increased)
        }
        .listStyle(.inset)
      }
    }
    .navigationBarTitle("Item", displayMode: .inline)
  }
}

struct ItemView_Previews: PreviewProvider {
    static var previews: some View {
      ItemView()
    }
}
