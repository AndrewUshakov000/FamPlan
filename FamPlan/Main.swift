//
//  MainScreen.swift
//  FamPlan
//
//  Created by Andrew Ushakov on 12/4/21.
//

import SwiftUI

struct InfluencerScreen: View {
    var image: String
    var body: some View {
       Image(image)
            .resizable()
            .clipShape(RoundedRectangle(cornerRadius: 30))
            .frame(width: 313, height: 197)
            .opacity(0.4)
    

    }
}
struct MainScreen: View {
    var influencers = ["obama", "churchill", "franklin"]
    var body: some View {
        ScrollView {
            ForEach(0..<influencers.count) { num in
                InfluencerScreen(image: influencers[num])
                    .padding()
            }.navigationTitle("Influencers")
        }
        
    }
}

struct MainScreen_Previews: PreviewProvider {
    static var previews: some View {
        MainScreen()
    }
}
