//
//  Genre.swift
//  MyBookLibrary
//
//  Created by Fatih Emre on 14.01.2025.
//

import SwiftData

@Model
final class Genre {
    var name: String
    var books: [Book] = []
    
    init(name: String) {
        self.name = name
    }
}
