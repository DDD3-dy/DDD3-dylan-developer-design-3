//
//  DDD3CardView.swift
//  DDD3
//
//  Created by Dylan Caetano on 20/12/2021.
//

import SwiftUI

struct DDD3CardView: View {
    // MARK: - PROPERITIES
    
    var boite: Boite
    
    @State private var isAnimating: Bool = false
    
    // MARK: - BODY
    
    var body: some View {
        ZStack {
            VStack(spacing: 20) {
                // BOITE: IMAGE
                Image(boite.image)
                    .resizable()
                    .scaledToFit()
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8)
                    .scaleEffect(isAnimating ? 1.0 : 0.6)
                
                // BOITE: TITLE
                Text(boite.tittle)
                    .foregroundColor(Color.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 2, x: 2, y: 2)
                //BOITE: HEADLINE
                Text(boite.headline)
                    .foregroundColor(Color.white)
                    .fontWeight(.heavy)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 16)
                    .frame(maxWidth: 480)
                // BUTTON LETS GO
                LetsGoButtonView()
            } //: VSTACK
        } //: ZSTACK
        .onAppear {
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimating = true
            }
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight:
                    .infinity, alignment: .center)
        .background(LinearGradient(gradient: Gradient(colors: boite.gradienColors), startPoint: .top,  endPoint: .bottom))
    }
}

// MARK: - PREVIEW

struct DDD3CardView_Previews: PreviewProvider {
    static var previews: some View {
        DDD3CardView(boite: boiteData[1])
    }
}
