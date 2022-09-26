//
//  CardView.swift
//  FamPlan
//
//  Created by Andrew Ushakov on 9/24/22.
//

import SwiftUI

struct CardView: View {
    @Binding var data: Influencer
    @Binding var hero: Bool
    
    var body: some View {
        VStack {
            Image(data.image)
                .resizable()
                .opacity(data.expand ? 1 : 0.5)
                .frame(height: data.expand ? 280 : 235)
                .cornerRadius(data.expand ? 0 : 25)
            
            if data.expand {
                Button {
                    withAnimation {
                        data.expand.toggle()
                        hero.toggle()
                    }
                } label: {
                    Image(systemName: "xmark.circle.fill")
                        .font(.title)
                        .offset(x: 160, y: -240)
                        .foregroundColor(.white)
                }
            }

                
                ScrollView(showsIndicators: false) {
                    HStack {
                        Text("Details")
                            .font(.custom("Aleo-Bold", fixedSize: 30))
                            .padding(.horizontal, 15)
                        
                        Spacer()
                    }

                    Divider()

                    HStack {
                        Text(data.notion)
                            .padding()
                            .font(.custom("Aleo-Regular", fixedSize: 19))
                    }
                    HStack {
                        Text("Routine")
                            .font(.custom("Aleo-Bold", fixedSize: 30))
                            .padding(.horizontal, 15)
                        
                        Spacer()
                    }
                    
                    Divider()
                    
                    VStack {
                        Text("1) Wake up at \(data.wakeTime)").font(.custom("Aleo-Bold", fixedSize: 20))
                            .padding(.top, 10)
                        
                        Text("2) Start working at \(data.grindTime)")
                            .font(.custom("Aleo-Bold", fixedSize: 20))
                            .padding()

                        Text("3) End working at \(data.finishTime)")
                            .font(.custom("Aleo-Bold", fixedSize: 20))
                        
                        Text("4) Hit the sack at \(data.bedTime)")
                            .font(.custom("Aleo-Bold", fixedSize: 20))
                            .padding()

                    }.padding()
                    
                    HStack {
                        Text("Features")
                            .font(.custom("Aleo-Bold", fixedSize: 30))
                            .padding(.horizontal, 15)
                        
                        Spacer()
                    }
                    
                    Divider()
                    
                    Text("\(data.asterisk)")
                        .font(.custom("Aleo-Light", fixedSize: 20))
                        .padding(.top, 10)
                }
            }
            .padding(.bottom)
            .contentShape(Rectangle())
            .navigationBarHidden(true)
    }
}
