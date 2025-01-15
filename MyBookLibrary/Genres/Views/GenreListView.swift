//
//  GenreListView.swift
//  MyBookLibrary
//
//  Created by Fatih Emre on 14.01.2025.
//

import SwiftUI
import SwiftData

struct GenreListView: View {
    
    // MARK: - PROPERTY
    
    @State private var presentAddNew = false
    @State private var sortOrder: GenreSortOrder = .forward
    
    // MARK: - BODY
    
    var body: some View {
        NavigationStack {
            GenreListSubview(sortOrder: sortOrder)
            .navigationTitle("Genres")
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        presentAddNew.toggle()
                    } label: {
                        Image(systemName: "plus.circle.fill")
                    }
                    .buttonStyle(.borderedProminent)
                    .sheet(isPresented: $presentAddNew) {
                        AddNewGenre()
                            .presentationDetents([.fraction(0.4)])
                            .interactiveDismissDisabled()
                    }
                }
                
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        sortOrder = sortOrder == GenreSortOrder.forward ? GenreSortOrder.reverse : GenreSortOrder.forward
                    } label: {
                        Image(systemName: "arrow.up.arrow.down")
                    }
                    .buttonStyle(.borderedProminent)
                }
            }
        }
    }
}
