//
//  iDiomsApp.swift
//  iDioms
//
//  Created by Francesca Russo on 29/10/2020.
//

import SwiftUI

@main
struct iDiomsApp: App {
    var body: some Scene {
        WindowGroup {
            Categorie(items: Array(idioms.prefix(6)))
                .environmentObject(Data())
        }
    }
}
