//
//  ContentView.swift
//  NativeScanner
//
//  Created by Adam Kuhnel on 4/20/24.
//

import SwiftUI

struct ContentView: View {
    @State private var showingScanner = false

    var body: some View {
        VStack {
            // Other content
            Button("Open Scanner") {
                showingScanner = true
            }
            .font(.headline)
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .clipShape(Capsule())
        }
        .sheet(isPresented: $showingScanner) {
            ScannerView()
        }
    }
}

