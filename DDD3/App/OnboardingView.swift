//
//  OnboardingView.swift
//  DDD3
//
//  Created by Dylan Caetano on 25/12/2021.
//

import SwiftUI

struct OnboardingView: View {
    // MARK: - PROPERIES
    
    var boite: [Boite] = boiteData
    
    // MARK: - BODY
    var body: some View {
        TabView {
            ForEach(boite[0...4]) { item in
                DDD3CardView(boite: item)
            } //: LOOP
        } //: TAB
        .tabViewStyle(PageTabViewStyle())
        .edgesIgnoringSafeArea(.all)
    }
}

// MARK: - PREVIEW

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(boite: boiteData)
    }
}
