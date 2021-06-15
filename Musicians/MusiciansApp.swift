//
//  MusiciansApp.swift
//  Musicians
//
//  Created by Rachel Kendal on 09/06/2021.
//

import SwiftUI

@main
struct MusiciansApp: App {
    @StateObject var available = Available()
    let viewModel = MusicianAppViewModel()
    
    var body: some Scene {
        WindowGroup {
            MusiciansView(viewModel: viewModel)
                .environmentObject(available)
        }
    }
}

class Available: ObservableObject {
    @Published var status: Bool = false
    
    func setStatus(status: Bool) -> Void {
        self.status = status
    }
}
