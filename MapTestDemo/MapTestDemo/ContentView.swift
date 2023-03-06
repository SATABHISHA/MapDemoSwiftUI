//
//  ContentView.swift
//  MapTestDemo
//
//  Created by Debashis Pal on 06/03/23.
//

import SwiftUI
import GoogleMaps

struct ContentView: View {
    var body: some View {
        VStack {
//            Image(systemName: "globe")
//                .imageScale(.large)
//                .foregroundColor(.accentColor)
//            Text("Hello, world!")
            GoogleMapsView().edgesIgnoringSafeArea(.top).frame(maxHeight: .infinity)
        }
//        .padding()
    }
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
            GMSServices.provideAPIKey("AIzaSyDtgNZUWtYbaj8UcA3BiznJwYl0Q_YsYrQ")
//            GMSPlacesClient.provideAPIKey("YOUR_API_KEY")
            return true
        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
