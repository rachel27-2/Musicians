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

var musicians: [Musician] = [Musician(name: "Rachel Kendal", instrument: "trombone", level: 1), Musician(name: "Declan Hickey", instrument: "clarinet", level: 1), Musician(name: "Callum Sullivan", instrument: "french horn", level: 1)]
