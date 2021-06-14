//
//  ContentView.swift
//  Musicians
//
//  Created by Rachel Kendal on 09/06/2021.
//

import SwiftUI



struct MusicianCell: View {
    var musician: MusicianApp.Musician
    var body: some View {
        NavigationLink(
            destination: MusicianDetailView(musician: musician)) {
            Text(verbatim: musician.name).font(.title2).padding(.leading, 20)
            Spacer()
            Text(verbatim: musician.instrument).font(.title3).padding(.trailing, 20)
                .foregroundColor(.gray)
            Image(systemName: "arrow.right").padding(.trailing, 20)
        }
    }
}

struct MusiciansView: View {
    @ObservedObject var viewModel: MusicianAppViewModel
    
    var body: some View {
        return NavigationView{
            VStack{
                ScrollView {
                    ForEach(viewModel.musicians, id: \.self) { musician in
                        MusicianCell(musician: musician)
                        Divider()
                    }
                }.padding(.top, 15)
            }.navigationTitle("Musicians")
            .toolbar {
                NavigationLink(destination: AddMusicianView(viewModel: viewModel)){
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





