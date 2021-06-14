//
//  UpdateAvailabilityView.swift
//  Musicians
//
//  Created by Rachel Kendal on 14/06/2021.
//

import SwiftUI

struct UpdateAvailabilityView: View {
    @State var musician: MusicianApp.Musician
    
    var body: some View {
        Form {
            Toggle("Available for work?", isOn: $musician.isAvailable)
            Button(action: { print(musician) }, label: {
                Text("Submit")
            })
        }
    }
}
