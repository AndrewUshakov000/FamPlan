//
//  Person.swift
//  FamPlan
//
//  Created by Andrew Ushakov on 12/2/21.
//

import SwiftUI

struct Influencer: Identifiable, Codable {
    let id: Int

    let name: String
    let wakeTime: String
    let grindTime: String
    let finishTime: String
    let bedTime: String
    let notion: String
    let image: String
    let description: String
    var expand: Bool
    var asterisk = "None"
}
