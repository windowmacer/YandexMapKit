//
//  YandexMap.swift
//  YandexMapKit
//
//  Created by Кирилл Арефьев on 31.05.2024.
//

import SwiftUI
import YandexMapsMobile
import Combine

struct YandexMapView: UIViewRepresentable {
     @EnvironmentObject var locationManager : LocationManager
     
     func makeUIView(context: Context) -> YMKMapView {
         return locationManager.mapView
     }
          
     func updateUIView(_ mapView: YMKMapView, context: Context) {}
 }
