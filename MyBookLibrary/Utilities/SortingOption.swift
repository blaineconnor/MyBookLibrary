//
//  SortingOption.swift
//  MyBookLibrary
//
//  Created by Fatih Emre on 15.01.2025.
//

import Foundation

enum SortingOption: String, Identifiable, CaseIterable {
    var id: Self { return self}
    
    case title
    case author
    case publishedYear
    case none
    
    var title: String {
        switch self {
        case .title:
            return "Title"
        case .author:
            return "Author"
        case .publishedYear:
            return "Published Year"
        case .none:
            return "None"
        }
    }
    
    var sortOption: SortDescriptor<Book> {
        switch self {
        case .title:
            return SortDescriptor(\.title, order: .forward)
        case .author:
            return SortDescriptor(\.author, order: .forward)
        case .publishedYear:
            return SortDescriptor(\.publishedYear, order: .forward)
        case .none:
            return SortDescriptor(\.title)
        }
    }
    
}
