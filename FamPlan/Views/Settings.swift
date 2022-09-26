//
//  Generals.swift
//  FamPlan
//
//  Created by Andrew Ushakov on 12/12/21.
//

import SwiftUI
import StoreKit

struct Settings: View {
    @Environment(\.requestReview) private var requestReview
    
    var body: some View {
        VStack {
        List {
            Section {
                HStack {
                    Image("star")
                        .resizable()
                        .frame(width: 35, height: 35)
                    
                    Text("Rate FamPlan")
                        .padding(.leading, 10)
                }.padding(.leading, 10).onTapGesture {
                    requestReview()
                }
                
            } header: {
                Text("Support me")
            }
            
            Section {
                Link(destination: URL(string: "https://www.instagram.com/invites/contact/?i=1fydsgaetntop&utm_content=2fafsc8")!) {
                    HStack {
                        Image("instagram")
                            .resizable()
                            .frame(width: 35, height: 35)

                    Text("Instagram")
                        .padding(.leading, 10)
                    }.padding(.leading, 10)
                }
                
                Link(destination: URL(string: "https://mobile.twitter.com/orangelanterns")!) {
                    HStack {
                        Image("twitter")
                            .resizable()
                            .frame(width: 35, height: 30)
                        
                    
                        Text("Twitter")
                            .padding(.leading, 10)
                    }.padding(.leading, 10)
                }
            } header: {
                Text("Follow me")
            }

            }
            .listStyle(.plain)
            .navigationBarTitle("Settings")
        }
    }
}

