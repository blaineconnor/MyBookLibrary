//
//  GenreDetailView.swift
//  MyBookLibrary
//
//  Created by Fatih Emre on 14.01.2025.
//

import SwiftUI

struct GenreDetailView: View {
    
    let genre: Genre
    
    var body: some View {
        VStack {
            Group {
                if genre.books.isEmpty {
                    ContentUnavailableView("No Books Under This Genre", systemImage: "square.stack.3d.up.slash")
                } else {
                    List(genre.books) { book in
                        Text(book.title)
                    }
                }
            }
        }
        .navigationTitle(genre.name)
    }
}
