//
//  ContentView.swift
//  JSC Hack
//
//  Created by Isaac Tijerina on 1/28/22.
//

import SwiftUI
import CoreData

struct ContentView: View {
    @Environment(\.managedObjectContext) private var viewContext
    @State private var animate = false
    
    @FetchRequest(
        sortDescriptors: [NSSortDescriptor(keyPath: \Item.timestamp, ascending: true)],
        animation: .default)
    private var items: FetchedResults<Item>
    
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                VStack {
                    Text("Welcome").font(.largeTitle)
                    Text("Astronaut").font(.largeTitle)
                    Text("Candidate!").font(.largeTitle)
                }
                Spacer()
                
                NavigationLink(destination: GradePicker()){
                    Text("TAP HERE TO CONTINUE")
                }
            }
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
