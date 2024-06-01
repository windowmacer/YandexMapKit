//
//  AppDelegate.swift
//  YandexMapKit
//
//  Created by Кирилл Арефьев on 31.05.2024.
//

import SwiftUI
import YandexMapsMobile

class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        YMKMapKit.setApiKey("Ваш API ключ")                         // Нужен ваш API ключ
        YMKMapKit.sharedInstance()
        return true
    }
}
