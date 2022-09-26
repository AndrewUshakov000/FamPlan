//
//  HomeView.swift
//  FamPlan
//
//  Created by Andrew Ushakov on 9/24/22.
//

import SwiftUI

struct HomeView: View {
    @StateObject private var viewModel: HomeViewModel
    
    @State private var hero = false
    @State var isShowingMailView = false

    @Environment(\.colorScheme) var colorScheme

    init(dataService: DataServiceProtocol) {
        _viewModel = StateObject(wrappedValue: HomeViewModel(dataService: dataService))
    }
    
    var body: some View {
        NavigationStack {
            ScrollView(showsIndicators: false) {
                VStack(spacing: 15) {
                    ForEach(0..<viewModel.dataArray.count) { i in
                        GeometryReader { geometry in
                            CardView(data: self.$viewModel.dataArray[i], hero: self.$hero)
                                .padding(.horizontal, viewModel.dataArray[i].expand ? 0 : 15)
                            
                                .offset(y: viewModel.dataArray[i].expand ? -geometry.frame(in: .global).minY : 0)
                                .onTapGesture {
                                    withAnimation(.interactiveSpring(response: 0.3, dampingFraction: 0.9, blendDuration: 0)) {
                                        self.hero.toggle()
                                        self.viewModel.dataArray[i].expand.toggle()
                                    }
                                }
                            
                            if !hero {
                                VStack {
                                    Text(viewModel.dataArray[i].name)
                                        .font(.custom("Aleo-Bold", fixedSize: 33))
                                        .padding(50)
                                    
                                    Text(viewModel.dataArray[i].description)
                                        .font(.custom("Aleo-Bold", fixedSize: 21))
                                        .padding(28)
                                }
                            }
                        }
                        .frame(height: viewModel.dataArray[i].expand ? UIScreen.main.bounds.height : 230)
                        .opacity(self.hero ? (viewModel.dataArray[i].expand ? 1 : 0) : 1)
                    }
                }
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(dataService: MockDataService(data: nil))
    }
}
