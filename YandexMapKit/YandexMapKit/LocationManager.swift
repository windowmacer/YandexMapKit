//
//  LocationManager.swift
//  YandexMapKit
//
//  Created by Кирилл Арефьев on 31.05.2024.
//

import Foundation
import CoreLocation
import YandexMapsMobile
import Combine

class LocationManager: NSObject, CLLocationManagerDelegate, ObservableObject {
    
    @Published var lastUserLocation: CLLocation? = nil
    private let manager = CLLocationManager()
    let mapView = YMKMapView(frame: CGRect.zero)!
    
    lazy var map : YMKMap = {
        return mapView.mapWindow.map
    }()
    
    override init() {
        super.init()
        self.manager.delegate = self
    }
    
    func pointLocation(point: YMKPoint) {
        let cameraPosition = YMKCameraPosition(target: point, zoom: 17.0, azimuth: 150.0, tilt: 30.0)
            map.move(with: cameraPosition, animation: YMKAnimation(type: .smooth, duration: 1.0))
    }
}

