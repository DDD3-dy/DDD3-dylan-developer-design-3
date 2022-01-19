//
//  LetsGoButtonView.swift
//  DDD3
//
//  Created by Dylan Caetano on 25/12/2021.
//

import SwiftUI

struct LetsGoButtonView: View {
    // MARK: - PROPERIES
    
    @AppStorage("isOnboarding") var isOnboading: Bool?
    
    // MARK: - BODY
    
    var body: some View {
        Button(action: {
            isOnboading = false
        }) {
            HStack(spacing: 8) {
                Text("Let's go")
                    .fontWeight(.heavy)
                
                Image(systemName: "arrow.right.circle.fill")
                    .imageScale(.large)
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(
                Capsule().strokeBorder(Color.white, lineWidth: 2.50)
            )
        } //: BUTTON
        .accentColor(Color.white)
    }
}

// MARK: - PREVIEW

struct LetsGoButtonView_Previews: PreviewProvider {
    static var previews: some View {
        LetsGoButtonView()
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
    }
}
