//
//  UpdateAvailabilityView.swift
//  Musicians
//
//  Created by Rachel Kendal on 14/06/2021.
//

import SwiftUI

struct UpdateAvailabilityView: View {
    @State var musician: MusicianApp.Musician
    @EnvironmentObject var available: Available
    
    var body: some View {
        Form {
            Toggle("Available for work?", isOn: $musician.isAvailable)
            
            Button(action: {available.status = musician.isAvailable}, label: {
                Text("Submit")
            })
        }
    }
}
