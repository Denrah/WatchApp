//
//  WatchAppApp.swift
//  WatchApp WatchKit Extension
//
//  Created by National Team on 03.11.2021.
//

import SwiftUI

@main
struct WatchAppApp: App {
    @SceneBuilder var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
        }

        WKNotificationScene(controller: NotificationController.self, category: "myCategory")
    }
}
