//
//  BookCellView.swift
//  MyBookLibrary
//
//  Created by Fatih Emre on 14.01.2025.
//

import SwiftUI

struct BookCellView: View {
    
    // MARK: - PROPERTY
    
    let book: Book
    
    // MARK: - BODY
    
    var body: some View {
        NavigationLink(value: book) {
            HStack(alignment: .top) {
                if let cover = book.cover, let image = UIImage(data: cover) {
                    Image(uiImage: image)
                        .resizable()
                        .scaledToFit()
                        .clipShape(.rect(cornerRadius: 5))
                        .frame(height: 100)
                }
                
                VStack(alignment: .leading) {
                    Text(book.title)
                        .bold()
                    
                    Group {
                        Text("Author \(book.author)")
                        Text("Published on: \(book.publishedYear.description)")
                    }
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
                }
            }
        }
    }
}
