//
//  ContentView.swift
//  MyBookLibrary
//
//  Created by Fatih Emre on 14.01.2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            BookListView()
                .tabItem {
                    Image(systemName: "books.vertical.fill")
                    Text("Books")
                }
            
            GenreListView()
                .tabItem {
                    Image(systemName: "gear.circle")
                    Text("Genre")
                }
        }
    }
}

#Preview {
    ContentView()
}
