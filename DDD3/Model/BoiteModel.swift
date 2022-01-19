//
//  BoiteModel.swift
//  DDD3
//
//  Created by Dylan Caetano on 27/12/2021.
//

import SwiftUI

// MARK: - BOITE DATA MODEL

struct Boite: Identifiable {
    var id = UUID()
    var tittle: String
    var headline: String
    var image: String
    var gradienColors: [Color]
    var learn: [String]
}
