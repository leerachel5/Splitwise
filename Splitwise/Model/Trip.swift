//
//  Trip.swift
//  Splitwise
//
//  Created by Rachel Lee on 8/9/24.
//

import Foundation

struct Trip: Identifiable {
    let id: String
    let name: String
    let startDate: Date
    let endDate: Date
    let users: [User]
}
