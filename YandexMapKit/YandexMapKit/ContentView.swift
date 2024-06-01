//
//  ContentView.swift
//  YandexMapKit
//
//  Created by Кирилл Арефьев on 31.05.2024.
//

import SwiftUI
import YandexMapsMobile
import Combine

struct ContentView: View {
    
    @State var latitude = String()
    @State var longitude = String()
    @ObservedObject var locationManager = LocationManager()
    
    var body: some View {
        ZStack{
            MapView(latitude: $latitude, longitude: $longitude)
                .environmentObject(locationManager)
            ListView(latitude: $latitude, longitude: $longitude)
                .environmentObject(locationManager)
        }
    }
}

struct ListView: View {
    @EnvironmentObject var locationManager : LocationManager
    @Binding var latitude: String
    @Binding var longitude: String
    
    var body: some View {
        VStack {
            Spacer()
            HStack {
                VStack(spacing: 10) {
                    TextField("latitude", text: $latitude)
                        .padding(10)
                        .background(.white)
                        .clipShape(Capsule())
                    TextField("longitude", text: $longitude)
                        .padding(10)
                        .background(.white)
                        .clipShape(Capsule())
                }
                Button("Start") {
                    locationManager.pointLocation(point: YMKPoint(latitude: Double(latitude) ?? 55.751263550483145,
                                                                  longitude: Double(longitude) ?? 37.62967790286453))
                }
                .padding(25)
                .background(.blue.opacity(0.7).gradient)
                .clipShape(Circle())
                .foregroundStyle(.white)
                .font(.system(size: 20, weight: .bold))
                
            }
            .padding(20)
            .background(Color(cgColor: CGColor(red: 0.3, green: 1, blue: 0.3, alpha: 1)))
        }
    }
}
