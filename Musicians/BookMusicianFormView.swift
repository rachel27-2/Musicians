//
//  BookMusicianFormView.swift
//  Musicians
//
//  Created by Rachel Kendal on 14/06/2021.
//

import SwiftUI

struct BookMusicianFormView: View {
    @State var booking: Booking
    
    var body: some View {
        Form {
            DatePicker("Select Date", selection: $booking.date)
            TextField("Job Description", text: $booking.description)
            Button(action: { print(booking) }) { Text("Submit Request") }
        }.navigationTitle("Book musician")
    }
}


struct Booking {
    var date: Date
    var musicianName: String
    var description: String
}
