//
//  SimpleIOSMagicAppApp.swift
//  SimpleIOSMagicApp
//
//  Created by Arian Flores - Magic on 1/23/23.
//

import SwiftUI
import MagicSDK


class AppDelegate: UIResponder, UIApplicationDelegate, ObservableObject {

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        // assign the newly created Magic instance to shared property
        Magic.shared = Magic(apiKey: "YOUR_PUBLISHABLE_API_KEY_HERE")

        // do any other necessary launch configuration
        return true
    }
}

@main
struct SimpleIOSMagicAppApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(appDelegate)
        }
    }
}
