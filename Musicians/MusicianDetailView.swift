//
//  MusicianDetailView.swift
//  Musicians
//
//  Created by Rachel Kendal on 14/06/2021.
//

import SwiftUI

struct MusicianDetailView: View {
    var musician: MusicianApp.Musician
    @EnvironmentObject var available: Available
    
    var body: some View {
      
            VStack {
                NavigationLink("Update Availability", destination: UpdateAvailabilityView(musician: musician))
                Text("Name: \(musician.name)")
                Image(musician.instrument)
                    .resizable()
                    .scaledToFit()
                Text("Instrument: \(musician.instrument)")
                if available.status {
                    VStack {
                        Text("Status: available for work").padding(.top, 20)
                        
                        NavigationLink("Book Musician", destination: BookMusicianFormView(booking: Booking(date: Date(), musicianName: musician.name, description: "")))
                    }
                } else {
                    Text("Status: unavailable for work").padding(.top, 20)
                }
            }.navigationTitle("Musician Profile")
        }
    }

