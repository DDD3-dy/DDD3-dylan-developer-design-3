//
//  BoiteRowView.swift
//  DDD3
//
//  Created by Dylan Caetano on 14/01/2022.
//

import SwiftUI

struct BoiteRowView: View {
    // MARK: - PROPERTIES
    
    var boite: Boite
    
    // MARK: - BODY
    
    var body: some View {
        HStack {
            Image(boite.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .scaledToFit()
                .frame(width: 90, height: 80, alignment: .center)
                .background(LinearGradient(gradient: Gradient(colors: boite.gradienColors), startPoint: .top, endPoint: .bottom))
                .padding(.trailing, 8)
                .cornerRadius(10)
            
            VStack(alignment: .leading, spacing: 5) {
                Text(boite.tittle)
                    .font(.title2)
                    .fontWeight(.bold)
                Text(boite.headline)
                    .font(.caption)
                    .foregroundColor(Color.secondary)
            } // VSTACK
            Spacer()
        } //: HSTACK
    }
}

   // MARK: - PREVIEW

struct BoiteRowView_Previews: PreviewProvider {
    static var previews: some View {
        BoiteRowView(boite: boiteData[0])
            .previewLayout(.sizeThatFits)
    }
}
