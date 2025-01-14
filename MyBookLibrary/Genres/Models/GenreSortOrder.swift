//
//  GenreSortOrder.swift
//  MyBookLibrary
//
//  Created by Fatih Emre on 14.01.2025.
//

import SwiftUI

enum GenreSortOrder: String, Identifiable, CaseIterable {
    case forward
    case reverse
    
    var id: Self { return self }
    
    var title: String {
        switch self {
        case .forward:
            return "Forward"
        case .reverse:
            return "Reverse"
        }
    }
    
    var sortOption: SortDescriptor<Genre> {
        switch self {
        case .forward:
            SortDescriptor(\Genre.name, order: .forward)
        case .reverse:
            SortDescriptor(\Genre.name, order: .reverse)
        }
    }
}
