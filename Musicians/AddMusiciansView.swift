//
//  AddMusiciansView.swift
//  Musicians
//
//  Created by Rachel Kendal on 14/06/2021.
//

import SwiftUI

struct AddMusicianView: View {
    @State var newMusician: MusicianApp.Musician = MusicianApp.Musician(name: "", instrument: "", level: 1, isAvailable: true)
    var viewModel: MusicianAppViewModel

    var body: some View {
        Form {
            Section(header: Text("Full Name")) {
                TextField("Full Name", text: $newMusician.name)
                    .autocapitalization(.words)
            }
            Section(header: Text("Details")) {
                Picker("Instrument", selection: $newMusician.instrument, content: {
                    ForEach(Instrument.allCases) { instrument in
                            Text(instrument.rawValue.capitalized)
                    }
                })
                Toggle("Available?", isOn: $newMusician.isAvailable)
            }

            Section {
                Button(action: {
                    print(newMusician)
                    viewModel.add(musician: newMusician)
                    print(viewModel.musicians)
                }, label: {
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
