/*
See the License.txt file for this sample’s licensing information.
*/

import SwiftUI

struct TabsView: View {
  var body: some View {
    TabView {
      TabPreviewView(name: "One")
        .tabItem {
          Label("Tab One", systemImage: "person")
        }

      TabPreviewView(name: "Two")
        .badge(2)
        .tabItem {
          Label("Tab Two", systemImage: "book")
        }

      TabPreviewView(name: "Three")
        .tabItem {
          Label("Tab Three", systemImage: "star")
        }

      TabPreviewView(name: "Four")
        .badge("!")
        .tabItem { 
          Label("Tab Four", systemImage: "hand.thumbsup")
        }
    }
    .navigationBarTitle("Tabs", displayMode: .inline)
  }
}

struct TabsView_Previews: PreviewProvider {
  static var previews: some View {
    TabsView()
  }
}
