//
//  HomeViewModel.swift
//  FamPlan
//
//  Created by Andrew Ushakov on 9/24/22.
//

import SwiftUI
import Combine

class HomeViewModel: ObservableObject {
    @Published var dataArray: [Influencer] = []
    var cancellables = Set<AnyCancellable>()
    let dataService: DataServiceProtocol
    
    var date: String = { () -> String in
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        
        return formatter.string(from: Date())
    }()

    init(dataService: DataServiceProtocol) {
        self.dataService = dataService
        self.loadData()
    }
    
    func loadData() {
        dataService.getData()
            .sink { completion in
                switch completion {
                case .finished:
                    break
                case .failure(let error):
                    print(error.localizedDescription)
                }
            } receiveValue: { influencers in
                self.dataArray = influencers
            }
            .store(in: &cancellables)
    }
}
