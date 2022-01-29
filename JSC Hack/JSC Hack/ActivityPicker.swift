//
//  ActivityPicker.swift
//  JSC Hack
//
//  Created by Isaac Tijerina on 1/29/22.
//

import SwiftUI

struct ActivityPicker: View {
    @Binding var mission: String
    var body: some View {
        VStack {
            Text("Choose Your Assingment").font(.largeTitle)
            Spacer()
            HStack {
                activityButton(activityName: .constant("\(mission) Base"))
                activityButton(activityName: .constant("\(mission) Contol Center"))
            }
            HStack {
                activityButton(activityName: .constant("\(mission) Med Bay"))
                activityButton(activityName: .constant("\(mission) Surface"))
            }
            HStack {
                activityButton(activityName: .constant("Location 4"))
                activityButton(activityName: .constant("Location 5"))
            }
            Spacer()
        }
    }
    
    struct activityButton: View {
        @Binding var activityName: String
        let buttonCornerRadius: CGFloat = 5
        let buttonLineWidth: CGFloat = 2
        var body: some View {
            HStack {
                VStack {
                    Text(activityName)
                }
                .frame(width: 100, height: 100)
                .padding()
                .overlay(Circle()
                            .stroke(Color.blue, lineWidth: buttonLineWidth))
            }.font(.title3)
                .padding()
        }
    }
}

struct ActivityPicker_Previews: PreviewProvider {
    static var previews: some View {
        ActivityPicker(mission: .constant("Mars"))
    }
}
