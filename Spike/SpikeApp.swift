//
//  SpikeApp.swift
//  Spike
//
//  Created by Alexander Suprun on 13.07.2023.
//

import SwiftUI

@main
struct SpikeApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
