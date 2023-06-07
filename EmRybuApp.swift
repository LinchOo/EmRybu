//
//  EmRybuApp.swift
//  EmRybu
//
//  Created by Олег Коваленко on 20.05.2023.
//

import SwiftUI
import Firebase

// Screen Rect Variable
let screen  = UIScreen.main.bounds

@main
struct EmRybuApp: App {
    
    @UIApplicationDelegateAdaptor private var appDelegate: AppDelegate
    
    
    
    
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
    
    // FireBase integration
        
        class AppDelegate: NSObject, UIApplicationDelegate {
            
            func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
                
                FirebaseApp.configure()
                print("AppDelegate Configure")
                return true
            }
        }
}
