//
//  ActivityTypePicker.swift
//  JSC Hack
//
//  Created by Isaac Tijerina on 1/29/22.
//

import SwiftUI

struct ActivityTypePicker: View {
    @Binding var mission: String
    var body: some View {
        VStack {
            Text("Choose Your Location").font(.largeTitle)
            Spacer()
            NavigationLink(destination: ActivityPicker(mission: .constant("\(mission) Base"))){
                locationButton(locationName: .constant("\(mission) Base"))
            }
            NavigationLink(destination: ActivityPicker(mission: .constant("\(mission) Contol Center"))){
                locationButton(locationName: .constant("\(mission) Contol Center"))
            }
            NavigationLink(destination: ActivityPicker(mission: .constant("\(mission) Med Bay"))){
                locationButton(locationName: .constant("\(mission) Med Bay"))
            }
            NavigationLink(destination: ActivityPicker(mission: .constant("\(mission) Med Bay"))){
                locationButton(locationName: .constant("\(mission) Surface"))
            }
            Spacer()
        }
    }
    
    struct locationButton: View {
        @Binding var locationName: String
        let buttonCornerRadius: CGFloat = 5
        let buttonLineWidth: CGFloat = 2
        var body: some View {
            HStack {
                VStack {
                    Text(locationName)
                    Text("% Complete")
                }
                .padding()
                .overlay(RoundedRectangle(cornerRadius: buttonCornerRadius)
                            .stroke(Color.blue, lineWidth: buttonLineWidth))
            }.font(.title)
        }
    }
}

struct ActivityTypePicker_Previews: PreviewProvider {
    static var previews: some View {
        ActivityTypePicker(mission: .constant("Mars"))
    }
}
