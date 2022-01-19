//
//  ContentView.swift
//  DDD3
//
//  Created by Dylan Caetano on 20/12/2021.
//

import SwiftUI

struct DDD3ContentView: View {
    // MARK: - PROPERTIES
    
    var boite: [Boite] = boiteData
    
    // MARK: - BODY
    
    var body: some View {
         NavigationView {
            List {
                ForEach(boite) { item in
                    BoiteRowView(boite: item)
                        .padding(.vertical, 20)
                }
            }
            .navigationTitle("Cours")
        } // NAVIGATION
    }
}

// MARK: - PREVIEW

struct DDD3ContentView_Previews: PreviewProvider {
    static var previews: some View {
        DDD3ContentView(boite: boiteData)
    }
}
