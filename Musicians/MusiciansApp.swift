//
//  MusiciansApp.swift
//  Musicians
//
//  Created by Rachel Kendal on 09/06/2021.
//

import SwiftUI

@main
struct MusiciansApp: App {
    let viewModel = MusicianAppViewModel()
    
    var body: some Scene {
        WindowGroup {
            MusiciansView(viewModel: viewModel)
        }
    }
}
