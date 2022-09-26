//
//  ContentView.swift
//  FamPlan
//
//  Created by Andrew Ushakov on 11/27/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HomeView(dataService: MockDataService(data: nil))
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


