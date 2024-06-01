//
//  MapView.swift
//  YandexMapKit
//
//  Created by Кирилл Арефьев on 31.05.2024.
//

import SwiftUI
import YandexMapsMobile
import Combine

struct MapView: View {
    @EnvironmentObject var locationManager : LocationManager
    @Binding var latitude: String
    @Binding var longitude: String
    
    var body: some View {
        ZStack {
            YandexMapView()
                .edgesIgnoringSafeArea(.all)
                .environmentObject(locationManager)
        }.onAppear{
            locationManager.pointLocation(point: YMKPoint(latitude: Double(latitude) ?? 55.751263550483145,
                                                          longitude: Double(longitude) ?? 37.62967790286453))
        }
    }
}
