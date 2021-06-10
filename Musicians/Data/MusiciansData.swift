//
//  MusiciansData.swift
//  MusiciansInfo
//
//  Created by Rachel Kendal on 07/06/2021.
//

import UIKit

//class MusiciansData: NSObject {
//    // MARK: - Properties
//    var musicians: [Musician]
//
//    static func generateMusiciansData() -> [Musician] {
//        return [
//            Musician(name: "Rachel Kendal", instrument: "guitar", level: 4),
//            Musician(name: "Declan Hickey", instrument: "clarinet", level: 3),
//            Musician(name: "Callum Sullivan", instrument: "french horn", level: 5)
//        ]
//    }
//
//    // MARK: - Initialisers
//    override init() {
//        musicians = MusiciansData.generateMusiciansData()
//    }
//
//    // MARK: - Methods
//    func numberOfMusicians() -> Int {
//        musicians.count
//    }
//
//    func append(musician: Musician, to tableView: UITableView) {
//        musicians.append(musician)
//        tableView.insertRows(at: [IndexPath(row: musicians.count-1, section: 0)], with: .automatic)
//    }
//
//    func musician(at indexPath: IndexPath) -> Musician {
//        musicians[indexPath.row]
//    }
//}

var musicians: [Musician] =
    [
        Musician(name: "Rachel Kendal", instrument: "trombone", level: 1, isAvailable: true),
        Musician(name: "Declan Hickey", instrument: "clarinet", level: 1, isAvailable: true),
        Musician(name: "Callum Sullivan", instrument: "french horn", level: 1, isAvailable: true),
        Musician(name: "Richard Woods Rogan", instrument: "bass", level: 1, isAvailable: false),
        Musician(name: "Leora Cohen", instrument: "violin", level: 1, isAvailable: true),
        Musician(name: "Helena Mackie", instrument: "oboe", level: 1, isAvailable: false),
        Musician(name: "Matt Hagarth", instrument: "guitar", level: 1, isAvailable: true),
        Musician(name: "Dom Martens", instrument: "cello", level: 1, isAvailable: true),
        Musician(name: "Ben Landymeux", instrument: "trombone", level: 1, isAvailable: true),
        Musician(name: "Hermione Kellow", instrument: "viola", level: 1, isAvailable: false),
        Musician(name: "Charlie Hewitt", instrument: "bass", level: 1, isAvailable: false),
        Musician(name: "Daire Toal", instrument: "violin", level: 1, isAvailable: true),
        Musician(name: "Esme Cavendish", instrument: "violin", level: 1, isAvailable: true),
        Musician(name: "Caius Lee", instrument: "organ", level: 1, isAvailable: true),
        Musician(name: "Izzy Savage", instrument: "voice", level: 1, isAvailable: true),
        Musician(name: "Jack Stebbing", instrument: "bassoon", level: 1, isAvailable: false),
        Musician(name: "Tom Moy", instrument: "voice", level: 1, isAvailable: true)
    ]
    
    func addMusician(musician: Musician) {
        musicians.append(musician)
    }

var newMusicians: [Musician] = []
