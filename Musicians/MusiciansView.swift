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
            Text(musician.name).frame(width: 150, alignment: .leading)
            Text(musician.instrument)
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
                if newMusicians.count > 0 {
                    List(0..<newMusicians.count, rowContent: { index in
                        MusicianCell(musician: newMusicians[index])
                    })
                }
            }.navigationTitle("Musicians")
            .toolbar {
                NavigationLink(destination: AddMusicianView(newMusician: Musician(name: "", instrument: "", level: 1, isAvailable: true))){
                    Button(action: {}, label: {
                        Text("Add Musician")
                    })
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

struct AddMusicianView: View {
    @State var newMusician: Musician
    
    var body: some View {
        Form {
            Section(header: Text("Full Name")) {
                TextField("Full Name", text: $newMusician.name)
                    .autocapitalization(.words)
            }
            Section(header: Text("Details")) {
                Picker(selection: $newMusician.instrument, label: Text("Instrument")) {
                    ForEach(0 ..< instruments.count) { index in
                        Text(instruments[index])
                    }
                }
                Toggle("Available?", isOn: $newMusician.isAvailable)
            }
            
            Section {
                Button(action: {newMusicians.append(newMusician)}, label: {
                    VStack {
                        Image(systemName: "pianokeys")
                        Text("Add Musician")
                    }.frame(
                        minWidth: 0,
                        maxWidth: .infinity,
                        minHeight: 0,
                        maxHeight: .infinity,
                        alignment: .center
                    )
                    
                })
            }
        }.navigationTitle("Add Musician")
    }
    
}
