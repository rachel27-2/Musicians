//
//  ContentView.swift
//  Musicians
//
//  Created by Rachel Kendal on 09/06/2021.
//

import SwiftUI

struct MusicianCell: View {
    var musician: Musician
    var body: some View {
        NavigationLink(
            destination: MusicianDetailView(musician: musician)) {
                Text(musician.name!)
                Spacer()
                Text(musician.instrument!)
                    .foregroundColor(.gray)
            }
        
    }
}

struct MusiciansView: View {
    var body: some View {
        return NavigationView{
            VStack {
                List(0..<musicians.count, rowContent: { index in
                    MusicianCell(musician: musicians[index])
                })
            }.navigationTitle("Musicians")
            .toolbar {
                NavigationLink(destination: AddMusicianView()){
                    Button("Add Musician") {
                        
                    }
                    
                }
            }
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MusiciansView()
    }
}

struct MusicianDetailView: View {
    var musician: Musician
    var body: some View {
        VStack {
            Text("Name: \(musician.name!)")
            Image(musician.instrument!)
                .resizable()
                .scaledToFit()
            Text("Instrument: \(musician.instrument!)")
        }.navigationTitle("Musician Profile")
    }
}

struct AddMusicianView: View {
    @State private var fullName: String = ""
    @State private var previewIndex = 0
    
    var body: some View {
        Form {
            TextField("Full Name", text: $fullName)
                .autocapitalization(.words)
            Picker(selection: $previewIndex, label: Text("Instrument")) {
                    ForEach(0 ..< instruments.count) {
                        Text(instruments[$0])
                    }
                }
        }
    }
}
