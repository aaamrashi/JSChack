//
//  Activity Description.swift
//  JSC Hack
//
//  Created by Isaac Tijerina on 1/29/22.
//

import SwiftUI

struct Activity_Description: View {
    @Binding var activity: String
    var body: some View {
        VStack {
            Text(activity).font(.largeTitle)
            Text("Activity Description").font(.title)
            Spacer()
            VStack {
                Text("[] to []  minutes")
                    .padding()
                    .overlay(RoundedRectangle(cornerRadius: 5)
                                .stroke(Color.blue, lineWidth: 2))
                ScrollView {
                    Text("Material Needed")
                        .padding()
                        .overlay(RoundedRectangle(cornerRadius: 5)
                                    .stroke(Color.blue, lineWidth: 2))
                }
                ScrollView {
                    Text("[Summary]")
                        .padding()
                        .overlay(RoundedRectangle(cornerRadius: 5)
                                    .stroke(Color.blue, lineWidth: 2))
                }
            }.font(.title2)
            HStack {
                Spacer()
                Text("Begin")
                    .padding()
            }.font(.title2)
        }
        
    }
}

struct Activity_Description_Previews: PreviewProvider {
    static var previews: some View {
        Activity_Description(activity: .constant("play"))
    }
}
