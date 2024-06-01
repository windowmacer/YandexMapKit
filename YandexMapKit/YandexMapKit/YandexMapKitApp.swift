//
//  YandexMapKitApp.swift
//  YandexMapKit
//
//  Created by Кирилл Арефьев on 31.05.2024.
//

import SwiftUI

@main
struct YandexMapKitApp: App {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) private var appDelegate
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
