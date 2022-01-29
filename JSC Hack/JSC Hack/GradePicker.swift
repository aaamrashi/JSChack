//
//  SwiftUIView.swift
//  JSC Hack
//
//  Created by Isaac Tijerina on 1/28/22.
//

import SwiftUI

struct GradePicker: View {
    var body: some View {
        VStack {
            Text("Choose Your Mission").font(.largeTitle)
            Spacer()
            NavigationLink(destination: ActivityTypePicker(mission: .constant("Satelite"))){
                missionButton(missionName: .constant("Satelite"), missionGrade: .constant("k-4"))
            }
            NavigationLink(destination: ActivityTypePicker(mission: .constant("Moon"))){
                missionButton(missionName: .constant("Moon"), missionGrade: .constant("5-8"))
            }
            NavigationLink(destination: ActivityTypePicker(mission: .constant("Mars"))){
                missionButton(missionName: .constant("Mars"), missionGrade: .constant("9-12"))
            }
            Spacer()
        }
    }
    
    struct missionButton: View {
        @Binding var missionName: String
        @Binding var missionGrade: String
        
        let buttonCornerRadius: CGFloat = 5
        let buttonLineWidth: CGFloat = 2
        
        var body: some View {
            HStack {
                VStack {
                    Text("\(missionName) Mission")
                    Text("(Grade \(missionGrade)")
                }
                .padding()
                .overlay(RoundedRectangle(cornerRadius: buttonCornerRadius)
                            .stroke(Color.blue, lineWidth: buttonLineWidth))
            }.font(.title)
        }
    }
    
    
}



struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        GradePicker()
    }
}
