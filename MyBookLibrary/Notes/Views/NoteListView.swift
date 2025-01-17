//
//  NoteListView.swift
//  MyBookLibrary
//
//  Created by Fatih Emre on 14.01.2025.
//

import SwiftUI
import SwiftData

struct NoteListView: View {
    
    // MARK: - PROPERTY
    
    let book: Book
    
    @Environment(\.modelContext) private var context
    
    // MARK: - BODY
    
    var body: some View {
        List {
            ForEach(book.notes) { note in
                VStack (alignment: .leading, spacing: 8){
                    Text(note.title)
                        .bold()
                    Text(note.message)
                }
            }
            .onDelete(perform: deleteNote(indexSet:))
        }
    }
    
    private func deleteNote(indexSet: IndexSet) {
        indexSet.forEach { index in
            let note = book.notes[index]
            context.delete(note)
            
            book.notes.remove(at: index)
            
            do {
                try context.save()
            } catch {
                print(error.localizedDescription)
            }
        }
    }
}
