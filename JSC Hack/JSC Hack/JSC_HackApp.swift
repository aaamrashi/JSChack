//
//  JSC_HackApp.swift
//  JSC Hack
//
//  Created by Isaac Tijerina on 1/28/22.
//

import SwiftUI

@main
struct JSC_HackApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
