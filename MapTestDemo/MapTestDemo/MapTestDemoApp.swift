//
//  MapTestDemoApp.swift
//  MapTestDemo
//
//  Created by Debashis Pal on 06/03/23.
//

import SwiftUI
import GoogleMaps

@main

struct MapTestDemoApp: App {
    var key =  GMSServices.provideAPIKey("AIzaSyDtgNZUWtYbaj8UcA3BiznJwYl0Q_YsYrQ")
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
