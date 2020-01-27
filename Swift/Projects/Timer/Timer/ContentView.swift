//
//  ContentView.swift
//  Timer
//
//  Created by Andrew Miotke on 1/16/20.
//  Copyright © 2020 andrewmiotke. All rights reserved.
//

import SwiftUI

struct ContentView: View {

    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    Text("0:00:00")
                        .font(.system(size: 80))
                }.padding(15)
                
                HStack {
                    Button(action: {}) {Text("Start")}
                        .padding()
                        .foregroundColor(Color.white)
                        .background(RoundedRectangle(cornerRadius: 50))
                        .foregroundColor(.green)
                    
                    Button(action: {print("Hello")}) {Text("Pause")}
                        .padding()
                        .foregroundColor(Color.white)
                        .background(RoundedRectangle(cornerRadius: 50))
                        .foregroundColor(.gray)
                    
                    Button(action: {}) {Text("Stop")}
                        .padding()
                        .foregroundColor(Color.white)
                        .background((RoundedRectangle(cornerRadius: 50)))
                        .foregroundColor(.red)
                }
                .padding(45)
                
                HStack {
                    Text("Logged Times")
                        .font(.system(size: 20))
                        .fontWeight(.light)
                }
                
                List {
                    Section {
                        HStack {
                            Image(systemName: "clock")
                            VStack {
                                Text("Hello image")
                            }
                        }
                    }
                }
            }.navigationBarTitle("Timer")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
