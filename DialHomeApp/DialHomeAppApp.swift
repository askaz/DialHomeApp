//
//  DialHomeAppApp.swift
//  DialHomeApp
//
//  Created by Andrew on 1/18/22.
//

import SwiftUI

@main
struct DialHomeAppApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
