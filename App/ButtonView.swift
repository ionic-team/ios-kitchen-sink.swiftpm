/*
See the License.txt file for this sample’s licensing information.
*/

import SwiftUI

struct ButtonView: View {
  var body: some View {
    NavigationView {
      ScrollView {
        VStack(spacing: 20) {
          
          // Fills
          VStack(spacing: 10) {
            Text("Button Fills")
              .bold()
            
            HStack {
              Button("Clear") {}
                .buttonStyle(.borderless)
              
              Button("Solid") {}
                .buttonStyle(.borderedProminent)
              
              
              Button("Solid") {}
                .buttonStyle(.bordered)
              
              
              Button("Outline") {}
                .padding(6)
                .background(
                  RoundedRectangle(cornerRadius: 8)
                    .stroke(.blue, lineWidth: 1)
                )
            }
          }
          
          Divider()
          
          // Shapes
          VStack(spacing: 10) {
            Text("Button Shapes")
              .bold()
            
            HStack {
              Button("Capsule") {}
                .buttonStyle(.borderedProminent)
                .controlSize(.large)
                .buttonBorderShape(.capsule)
              
              Button("Rounded") {}
                .buttonStyle(.borderedProminent)
                .controlSize(.large)
                .buttonBorderShape(.roundedRectangle)
              
              Button("Rectangular") {}
                .buttonStyle(.borderedProminent)
                .controlSize(.large)
                .buttonBorderShape(.roundedRectangle(radius: 0))
            }
          }
          
          Divider()
          
          // Sizes
          VStack(spacing: 10) {
            Text("Button Sizes")
              .bold()
            
            HStack {
              Button("Mini") {}
                .buttonStyle(.borderless)
                .controlSize(.mini)
              
              Button("Small") {}
                .buttonStyle(.borderless)
                .controlSize(.small)
              
              Button("Regular") {}
                .buttonStyle(.borderless)
                .controlSize(.regular)
              
              Button("Large") {}
                .buttonStyle(.borderless)
                .controlSize(.large)
            }
            HStack {
              Button("Mini") {}
                .buttonStyle(.borderedProminent)
                .controlSize(.mini)
              
              Button("Small") {}
                .buttonStyle(.borderedProminent)
                .controlSize(.small)
              
              Button("Regular") {}
                .buttonStyle(.borderedProminent)
                .controlSize(.regular)
              
              Button("Large") {}
                .buttonStyle(.borderedProminent)
                .controlSize(.large)
            }
            HStack {
              // Mini Icon
              Button { }
              label: {
                HStack {
                  Image(systemName: "apple.logo")
                }
              }
              .buttonStyle(.borderedProminent)
              .controlSize(.mini)
              .clipShape(Circle())
                
              // Small Icon
              Button { }
              label: {
                HStack {
                  Image(systemName: "apple.logo")
                }
              }
              .buttonStyle(.borderedProminent)
              .controlSize(.small)
              .clipShape(Circle())
                
              // Regular Icon
              Button { }
              label: {
                HStack {
                  Image(systemName: "apple.logo")
                }
              }
              .buttonStyle(.borderedProminent)
              .controlSize(.regular)
              .clipShape(Circle())
                
              // Large Icon
              Button { }
              label: {
                HStack {
                  Image(systemName: "apple.logo")
                }
              }
              .buttonStyle(.borderedProminent)
              .controlSize(.large)
              .clipShape(Circle())
            }
          }
          
          Divider()
          
          // Shapes + Sizes
          VStack(spacing: 10) {
            Text("Button Shapes + Sizes")
              .bold()
            
            HStack {
              Button("Capsule") {}
                .buttonStyle(.borderedProminent)
                .controlSize(.mini)
                .buttonBorderShape(.capsule)
              
              Button("Capsule") {}
                .buttonStyle(.borderedProminent)
                .controlSize(.small)
                .buttonBorderShape(.capsule)
              
              Button("Capsule") {}
                .buttonStyle(.borderedProminent)
                .controlSize(.regular)
                .buttonBorderShape(.capsule)
              
              Button("Capsule") {}
                .buttonStyle(.borderedProminent)
                .controlSize(.large)
                .buttonBorderShape(.capsule)
            }
            HStack {
              Button("Rounded") {}
                .buttonStyle(.borderedProminent)
                .controlSize(.mini)
                .buttonBorderShape(.roundedRectangle)
              
              Button("Rounded") {}
                .buttonStyle(.borderedProminent)
                .controlSize(.small)
                .buttonBorderShape(.roundedRectangle)
              
              Button("Rounded") {}
                .buttonStyle(.borderedProminent)
                .controlSize(.regular)
                .buttonBorderShape(.roundedRectangle)
              
              Button("Rounded") {}
                .buttonStyle(.borderedProminent)
                .controlSize(.large)
                .buttonBorderShape(.roundedRectangle)
            }
          }
          
          Divider()
          
          VStack(spacing: 10) {
            Text("Button Icons")
              .bold()

            HStack {
              // Icon Only
              Button { }
              label: {
                HStack {
                  Image(systemName: "apple.logo")
                }
              }
              .buttonStyle(.borderedProminent)

              // Left Icon
              Button { }
              label: {
                HStack {
                  Image(systemName: "apple.logo")
                  Text("Button")
                }
              }
              .buttonStyle(.borderedProminent)
              
              // Right Icon
              Button { }
              label: {
                HStack {
                  Text("Button")
                  Image(systemName: "apple.logo")
                }
              }
              .buttonStyle(.borderedProminent)
            }

            HStack {
              // Top Icon
              Button { }
              label: {
                VStack {
                  Image(systemName: "apple.logo")
                  Text("Button")
                }
              }
              .buttonStyle(.borderedProminent)
              
              // Bottom Icon
              Button { }
              label: {
                VStack {
                  Text("Button")
                  Image(systemName: "apple.logo")
                }
              }
              .buttonStyle(.borderedProminent)
            }
          }
          
          Divider()
        }
      }
    }
    .navigationBarTitle("Button", displayMode: .inline)
  }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
      ButtonView()
    }
}
