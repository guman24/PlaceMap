//
//  LocationsViewModel.swift
//  PlaceMap
//
//  Created by Rajan Karki on 03/02/2024.
//

import Foundation
import MapKit
import SwiftUI

class LocationsViewModel: ObservableObject {
    
    // All loaded locations
    @Published var locations: [Location]
    
    // Current location on map
    @Published var mapLocation: Location {
        didSet {
            updateCameraPosition(location: mapLocation)
        }
    }
    
    // current map camera location/region
    @Published var cameraPosition: MapCameraPosition = MapCameraPosition.automatic
    let mapSpan = MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
    
    // show list of locations boolean
    @Published var showLocationsList: Bool = false
    
    // show location detail view sheet
    @Published var sheetLocation: Location? = nil
    
    init() {
        let locations = LocationsDataService.locations
        self.locations = locations
        self.mapLocation = locations.first!
        self.updateCameraPosition(location: locations.first!)
    }
    
    private func updateCameraPosition(location: Location) {
        withAnimation(.easeInOut) {
            cameraPosition = MapCameraPosition.region(MKCoordinateRegion(
                center: location.coordinates,
                span: mapSpan))
        }
    }
    
    func toggleLocationsList() {
        withAnimation(.easeInOut) {
            showLocationsList = !showLocationsList
        }
    }
    
    func changeLocation(location: Location) {
        withAnimation(.easeInOut) {
            self.mapLocation = location
            showLocationsList = false
        }
    }
    
    func nextButtonPressed() {
//        let currentIndex = locations.firstIndex { location in
//            return location == mapLocation
//        }
        // Get the current index
        guard let currentIndex = locations.firstIndex(where: {$0 == mapLocation}) else {
            print("Could not find current index in locations array! Should never happen")
            return
        }
        
        // Check if the current index is valid
        let nextIndex = currentIndex + 1
        guard locations.indices.contains(nextIndex) else {
            // Next index is NOT valid
            // Restart from 0
            guard let firstLocation = locations.first else { return }
            changeLocation(location: firstLocation)
            return
        }
        
        // Next index is valid
        let nextLocation = locations[nextIndex]
        changeLocation(location: nextLocation)
    }
}
