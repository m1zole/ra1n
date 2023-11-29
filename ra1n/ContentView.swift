//
//  ContentView.swift
//  ra1n
//
//  Created by mizole on 2023/11/28.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
                .onTapGesture{
                    var array = ["-R"]
                    var args: NSArray = NSArray(array: array)
                    spawnRoot("ra1npoc15", args as? [Any])
                }
            Text("Hello, world!")
                .onTapGesture {
                    spawnRoot("openra1n_ios", nil)
                }
        }
        .padding()
    }
}

