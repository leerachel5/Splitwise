//
//  TripListView.swift
//  Splitwise
//
//  Created by Rachel Lee on 8/9/24.
//

import SwiftUI

struct TripListView: View {
    let trips: [Trip]
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(trips) { trip in
                    HStack {
                        VStack(alignment: .leading) {
                            Text(trip.name)
                            Spacer()
                            Text("\(trip.startDate.formatted(date: .numeric, time: .omitted)) - \(trip.endDate.formatted(date: .numeric, time: .omitted))")
                        }
                        Spacer()
                        VStack(alignment: .trailing) {
                            Spacer()
                            HStack {
                                ForEach(trip.users) { user in
                                    Text(user.name)
                                }
                            }
                        }
                    }
                }
            }
            .listStyle(.inset)
            .navigationTitle("Splitwise")
            .navigationBarColor(.blue, textColor: .white)
        }
    }
}

#Preview {
    TripListView(trips: [
        Trip(id: "0", name: "Japan", startDate: Date(), endDate: Date(), users: [User(id: "0", name: "Jane"), User(id: "1", name: "John")]),
        Trip(id: "0", name: "Japan", startDate: Date(), endDate: Date(), users: [User(id: "0", name: "Jane"), User(id: "1", name: "John")]),
        Trip(id: "0", name: "Japan", startDate: Date(), endDate: Date(), users: [User(id: "0", name: "Jane"), User(id: "1", name: "John")]),
        Trip(id: "0", name: "Japan", startDate: Date(), endDate: Date(), users: [User(id: "0", name: "Jane"), User(id: "1", name: "John")]),
        Trip(id: "0", name: "Japan", startDate: Date(), endDate: Date(), users: [User(id: "0", name: "Jane"), User(id: "1", name: "John")]),
        Trip(id: "0", name: "Japan", startDate: Date(), endDate: Date(), users: [User(id: "0", name: "Jane"), User(id: "1", name: "John")]),
        Trip(id: "0", name: "Japan", startDate: Date(), endDate: Date(), users: [User(id: "0", name: "Jane"), User(id: "1", name: "John")]),
        Trip(id: "0", name: "Japan", startDate: Date(), endDate: Date(), users: [User(id: "0", name: "Jane"), User(id: "1", name: "John")]),
        Trip(id: "0", name: "Japan", startDate: Date(), endDate: Date(), users: [User(id: "0", name: "Jane"), User(id: "1", name: "John")]),
        Trip(id: "0", name: "Japan", startDate: Date(), endDate: Date(), users: [User(id: "0", name: "Jane"), User(id: "1", name: "John")]),
        Trip(id: "0", name: "Japan", startDate: Date(), endDate: Date(), users: [User(id: "0", name: "Jane"), User(id: "1", name: "John")]),
        Trip(id: "0", name: "Japan", startDate: Date(), endDate: Date(), users: [User(id: "0", name: "Jane"), User(id: "1", name: "John")]),
        Trip(id: "0", name: "Japan", startDate: Date(), endDate: Date(), users: [User(id: "0", name: "Jane"), User(id: "1", name: "John")]),
        Trip(id: "0", name: "Japan", startDate: Date(), endDate: Date(), users: [User(id: "0", name: "Jane"), User(id: "1", name: "John")]),
        Trip(id: "0", name: "Japan", startDate: Date(), endDate: Date(), users: [User(id: "0", name: "Jane"), User(id: "1", name: "John")]),
        Trip(id: "0", name: "Japan", startDate: Date(), endDate: Date(), users: [User(id: "0", name: "Jane"), User(id: "1", name: "John")]),
        Trip(id: "0", name: "Japan", startDate: Date(), endDate: Date(), users: [User(id: "0", name: "Jane"), User(id: "1", name: "John")]),
        Trip(id: "0", name: "Japan", startDate: Date(), endDate: Date(), users: [User(id: "0", name: "Jane"), User(id: "1", name: "John")])
    ])
}
