//
//  MusicianDetailView.swift
//  Musicians
//
//  Created by Rachel Kendal on 14/06/2021.
//

import SwiftUI

struct MusicianDetailView: View {
    var musician: MusicianApp.Musician
    var body: some View {
        VStack {
            Text("Name: \(musician.name)")
            Image(musician.instrument)
                .resizable()
                .scaledToFit()
            Text("Instrument: \(musician.instrument)")
            if musician.isAvailable {
                Text("Status: available for work").padding(.top, 20)
            } else {
                Text("Status: unavailable for work").padding(.top, 20)
            }
        }.navigationTitle("Musician Profile")
    }
}
