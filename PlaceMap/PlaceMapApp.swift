//
//  PlaceMapApp.swift
//  PlaceMap
//
//  Created by Rajan Karki on 03/02/2024.
//

import SwiftUI

@main
struct PlaceMapApp: App {
    @StateObject private var vm = LocationsViewModel()
    var body: some Scene {
        WindowGroup {
            LocationsView()
                .environmentObject(vm)
        }
    }
}
