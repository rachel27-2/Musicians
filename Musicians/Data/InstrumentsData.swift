////
////  InstrumentsData.swift
////  MusiciansInfo
////
////  Created by Rachel Kendal on 07/06/2021.
////
//
//import UIKit
//
//class InstrumentsData: NSObject {
//    //MARK: - Properties
//    var instruments = [
//        "violin",
//        "viola",
//        "cello",
//        "bass",
//        "oboe",
//        "flute",
//        "clarinet",
//        "bassoon",
//        "trumpet",
//        "trombone",
//        "french horn",
//        "tuba",
//        "guitar",
//        "piano"
//    ]
//
//    var selectedInstrument: String? {
//        didSet {
//            if let selectedInstrument = selectedInstrument,
//               let index = instruments.firstIndex(of: selectedInstrument) {
//                selectedInstrumentIndex = index
//            }
//        }
//    }
//
//    var selectedInstrumentIndex: Int?
//
//    //MARK: - Methods
//    func selectInstrument(at indexPath: IndexPath) {
//        selectedInstrument = instruments[indexPath.row]
//    }
//
//    func numberOfInstruments() -> Int {
//        instruments.count
//    }
//
//    func instrumentName(at indexPath: IndexPath) -> String {
//        instruments[indexPath.row]
//    }
//}

var instruments = [
    "violin",
    "viola",
    "cello",
    "bass",
    "oboe",
    "flute",
    "clarinet",
    "bassoon",
    "trumpet",
    "trombone",
    "french horn",
    "tuba",
    "guitar",
    "piano"
]
