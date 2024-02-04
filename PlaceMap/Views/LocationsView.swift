//
//  LocationsView.swift
//  PlaceMap
//
//  Created by Rajan Karki on 03/02/2024.
//

import SwiftUI
import MapKit

struct LocationsView: View {
    @EnvironmentObject private var vm: LocationsViewModel
    let maxWidthForIpad: CGFloat = 700
    var body: some View {
        ZStack {
            mapLayer
                .ignoresSafeArea()
            VStack(spacing: 0) {
                header.padding()
                    .frame(maxWidth: maxWidthForIpad)
                Spacer()
                locationsPreviewStack
            }
        }
        .sheet(item: $vm.sheetLocation, onDismiss: nil) { location in
            LocationDetailView(location: location)
        }
    }
}

extension LocationsView {
    private var header: some View {
        VStack {
            Text(vm.mapLocation.name + ", " + vm.mapLocation.cityName)
                .font(.title3)
                .fontWeight(.bold)
                .foregroundColor(.primary)
                .frame(height: 56)
                .frame(maxWidth: .infinity)
                .background(.thickMaterial)
                .animation(.none, value: vm.mapLocation)
                .overlay(alignment: .trailing) {
                    Image(systemName: "chevron.down")
                        .font(.headline)
                        .foregroundColor(.primary)
                        .padding()
                        .rotationEffect(Angle(degrees: vm.showLocationsList ? 180 : 0))
                }
                .onTapGesture {
                    vm.toggleLocationsList()
                }
            if vm.showLocationsList {
                LocationsListView()
            }
        }
        .background(.thickMaterial)
        .cornerRadius(10)
        .shadow(color: .black.opacity(0.3),radius: 20, x: 0, y: 10)
        
    }
    
    private var mapLayer: some View {
        Map(position: $vm.cameraPosition){
            //Markers
            ForEach(vm.locations) {location in
//                    Marker(
//                        location.name,
//                        coordinate: location.coordinates
//                    )
//                    Marker(location.name, systemImage: "building", coordinate: location.coordinates)
//                        .tint(.red)
                Annotation(location.name, coordinate: location.coordinates) {
                    MapAnnotationView()
                        .scaleEffect(location == vm.mapLocation ? 1.0 : 0.6)
                        .shadow(radius: 10)
                        .onTapGesture {
                            vm.changeLocation(location: location)
                        }
                }
            }
        
        }
    }
    private var locationsPreviewStack: some View {
        ZStack {
            ForEach(vm.locations) { location in
                if vm.mapLocation == location {
                    LocationPreviewView(location: location)
                        .shadow(color: .black.opacity(0.3), radius: 20)
                        .padding()
                        .frame(maxWidth: maxWidthForIpad)
                        .frame(maxWidth: .infinity)
                        .transition(.asymmetric(
                            insertion: .move(edge: .trailing),
                            removal: .move(edge: .leading)))
                }
            }
        }
    }
}

#Preview {
    LocationsView()
        .environmentObject(LocationsViewModel())
}
