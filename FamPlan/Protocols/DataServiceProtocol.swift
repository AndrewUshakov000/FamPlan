//
//  DataServiceProtocol.swift
//  FamPlan
//
//  Created by Andrew Ushakov on 9/24/22.
//

import SwiftUI
import Combine

protocol DataServiceProtocol {
    func getData() -> AnyPublisher<[Influencer], Error>
}
