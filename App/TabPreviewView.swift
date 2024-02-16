/*
See the License.txt file for this sample’s licensing information.
*/

import SwiftUI

struct TabPreviewView: View {
  var name: String = ""

  init(name: String) {
    self.name = name
  }
  
  var body: some View {
    VStack {
      Text("Tab \(name)")
        .font(.largeTitle)
        .fontWeight(.bold)
        .padding()
    }
  }
    
}

struct TabPreviewView_Previews: PreviewProvider {
  static var previews: some View {
    TabPreviewView(name: "One")
  }
}
