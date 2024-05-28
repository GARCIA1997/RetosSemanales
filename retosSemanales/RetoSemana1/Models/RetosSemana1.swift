//
//  RetosSemana1.swift
//  retosSemanales
//
//  Created by Alejandro García on 27/05/24.
//

import Foundation
import SwiftUI
struct PrincipalArray: Codable {
    let image: String
    let imageApp: String
    let title: String
    let titleApp: String
}
struct FeaturedArray: Identifiable {
    var id = UUID()
    let imageApp: String
    let titleApp: String
    let backgroundApp: Color
}
