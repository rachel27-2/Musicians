//
//  ContentView.swift
//  Musicians
//
//  Created by Rachel Kendal on 09/06/2021.
//

import SwiftUI



struct MusicianCell: View {
    var viewModel: MusicianAppViewModel
    var body: some View {
        NavigationLink(
            destination: MusicianDetailView(viewModel: viewModel)) {
            Text(verbatim: viewModel.musician.name).frame(width: 150, alignment: .leading)
            Text(verbatim: viewModel.musician.instrument)
                .foregroundColor(.gray)
        }
        
    }
}

struct MusiciansView: View {
    var viewModel: MusicianAppViewModel
    
    var body: some View {
        return NavigationView{
            VStack {
                List(0..<MusicianAppViewModel.musicians.count, rowContent: { index in
                    MusicianCell(viewModel: viewModel)
                })
                
            }.navigationTitle("Musicians")
            .toolbar {
                NavigationLink(destination: MusiciansView(viewModel: viewModel)){
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
        let viewModel = MusicianAppViewModel()
        
        MusiciansView(viewModel: viewModel)
    }
}

struct MusicianDetailView: View {
    var viewModel: MusicianAppViewModel
    var body: some View {
        VStack {
            Text("Name: \(viewModel.musician.name)")
            Image(viewModel.musician.instrument)
                .resizable()
                .scaledToFit()
            Text("Instrument: \(viewModel.musician.instrument)")
            if viewModel.musician.isAvailable {
                Text("Status: available for work").padding(.top, 20)
            } else {
                Text("Status: unavailable for work").padding(.top, 20)
            }
        }.navigationTitle("Musician Profile")
    }
}

//struct AddMusicianView: View {
//    @State var newMusician = Musician(name: "", instrument: "violin", level: 1, isAvailable: true)
//    @Binding var newMusicians: [Musician]
//
//    var body: some View {
//        Form {
//            Section(header: Text("Full Name")) {
//                TextField("Full Name", text: $newMusician.name)
//                    .autocapitalization(.words)
//            }
//            Section(header: Text("Details")) {
//                Picker("Instrument", selection: $newMusician.instrument, content: {
//                    ForEach(Instrument.allCases) { instrument in
//                            Text(instrument.rawValue.capitalized)
//                    }
//                })
//                Toggle("Available?", isOn: $newMusician.isAvailable)
//            }
//
//            Section {
//                Button(action: {
//                    print(newMusician)
//                    newMusicians.append(newMusician)
//                    print(newMusicians)
//                }, label: {
//                    VStack {
//                        Image(systemName: "pianokeys")
//                        Text("Add Musician")
//                    }.frame(
//                        minWidth: 0,
//                        maxWidth: .infinity,
//                        minHeight: 0,
//                        maxHeight: .infinity,
//                        alignment: .center
//                    )
//
//                })
//            }
//        }.navigationTitle("Add Musician")
//    }
//
//}


enum Instrument: String, CaseIterable, Identifiable {
    case violin
    case viola
    case cello
    case bass
    case oboe
    case bassoon
    case flute
    case clarinet
    case frenchhorn
    case trumpet
    case trombone
    case tuba
    case guitar
    case voice
    case organ
    case piano

    var id: String { self.rawValue }
}
