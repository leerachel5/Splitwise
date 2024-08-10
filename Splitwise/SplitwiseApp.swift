//
//  SplitwiseApp.swift
//  Splitwise
//
//  Created by Rachel Lee on 8/9/24.
//

import SwiftUI

@main
struct SplitwiseApp: App {
    var body: some Scene {
        WindowGroup {
            TripListView(trips: [
                Trip(id: "0", name: "Japan", startDate: Date(), endDate: Date(), users: [User(id: "0", name: "Jane"), User(id: "1", name: "John")])
            ])
        }
    }
}
