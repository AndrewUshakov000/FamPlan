//
//  FamPlanDataService.swift
//  FamPlan
//
//  Created by Andrew Ushakov on 9/24/22.
//

import SwiftUI
import Combine

class DataService: DataServiceProtocol {
    // FIXME: Find an API for this app if you want to use it
    let url = URL(string: "")!
    
    func getData() -> AnyPublisher<[Influencer], Error> {
        URLSession.shared.dataTaskPublisher(for: url)
            .map(\.data)
            .decode(type: [Influencer].self, decoder: JSONDecoder())
            .receive(on: DispatchQueue.main)
            .eraseToAnyPublisher()
    }
}
