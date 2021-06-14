//
//  MusiciansViewModel.swift
//  Musicians
//
//  Created by Rachel Kendal on 10/06/2021.
//

import SwiftUI

class MusicianAppViewModel: ObservableObject {
    
    private(set) var model: MusicianApp = MusicianApp()
    
    @Published var musicians =  [
        MusicianApp.Musician(name: "Rachel Kendal", instrument: "trombone", level: 1, isAvailable: true),
        MusicianApp.Musician(name: "Declan Hickey", instrument: "clarinet", level: 1, isAvailable: true),
        MusicianApp.Musician(name: "Callum Sullivan", instrument: "french horn", level: 1, isAvailable: true),
        MusicianApp.Musician(name: "Richard Woods Rogan", instrument: "bass", level: 1, isAvailable: false),
        MusicianApp.Musician(name: "Leora Cohen", instrument: "violin", level: 1, isAvailable: true),
        MusicianApp.Musician(name: "Helena Mackie", instrument: "oboe", level: 1, isAvailable: false),
        MusicianApp.Musician(name: "Matt Hagarth", instrument: "guitar", level: 1, isAvailable: true),
        MusicianApp.Musician(name: "Dom Martens", instrument: "cello", level: 1, isAvailable: true),
        MusicianApp.Musician(name: "Ben Landymeux", instrument: "trombone", level: 1, isAvailable: true),
        MusicianApp.Musician(name: "Hermione Kellow", instrument: "viola", level: 1, isAvailable: false),
        MusicianApp.Musician(name: "Charlie Hewitt", instrument: "bass", level: 1, isAvailable: false),
        MusicianApp.Musician(name: "Daire Toal", instrument: "violin", level: 1, isAvailable: true),
        MusicianApp.Musician(name: "Esme Cavendish", instrument: "violin", level: 1, isAvailable: true),
        MusicianApp.Musician(name: "Caius Lee", instrument: "organ", level: 1, isAvailable: true),
        MusicianApp.Musician(name: "Izzy Savage", instrument: "voice", level: 1, isAvailable: true),
        MusicianApp.Musician(name: "Jack Stebbing", instrument: "bassoon", level: 1, isAvailable: false),
        MusicianApp.Musician(name: "Tom Moy", instrument: "voice", level: 1, isAvailable: true)
    ]
    
    func add(musician: MusicianApp.Musician) {
        musicians.append(musician)
    }
    
}
