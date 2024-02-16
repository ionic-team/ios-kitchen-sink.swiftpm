/*
See the License.txt file for this sample’s licensing information.
*/

import SwiftUI

struct DatePickerView: View {
  @State private var calendarDate = Date();
  @State private var wheelDate = Date();
  @State private var overlayDate = Date();
  
  private func updateDate() async {
    // Delay of 5 seconds (1 second = 1_000_000_000 nanoseconds)
    try? await Task.sleep(nanoseconds: 5_000_000_000)
     
    let isoDate = "2022-03-14T10:44:00+0000"
    let dateFormatter = ISO8601DateFormatter()
    self.overlayDate = dateFormatter.date(from:isoDate)!
  }

  var body: some View {
    NavigationView {
      VStack {
        Text("Calendar Date Picker").bold()
        DatePicker(
          "Start Date",
          selection: $calendarDate,
          displayedComponents: [.date]
        )
        .datePickerStyle(GraphicalDatePickerStyle())
        
        Text("Wheel Date Picker").bold()
        DatePicker(
          "Start Date",
          selection: $wheelDate,
          displayedComponents: [.date]
        )
        .datePickerStyle(WheelDatePickerStyle())
        .labelsHidden()
        .onAppear {
          let calendar = Calendar(identifier: .gregorian)
          let components = DateComponents(year: 2023, month: 12, day: 8)
          if let customDate = calendar.date(from: components) {
            self.wheelDate = customDate
          }
        }
        
        HStack {
          Text("Overlay Date Picker").bold()
          DatePicker(
            "Start Date",
            selection: $overlayDate,
            displayedComponents: [.date]
          )
          .labelsHidden()
          // Call a function to update the date after 5 seconds
          .task() {
            await self.updateDate();
          };
        }
      }
    }
    .navigationBarTitle("Date Picker", displayMode: .inline)
  }
}

struct DatePickerView_Previews: PreviewProvider {
    static var previews: some View {
      DatePickerView()
    }
}
