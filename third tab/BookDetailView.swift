//
//  BookDetailView.swift
//  NavigationStackProject
//
//  Created by Aydın KAYA on 21.03.2024.
//

import SwiftUI

struct BookDetailView: View {
    let book: Book
    
    var body: some View {
        VStack {
            Text("Book detail view")
            
            Divider()
            
            NavigationLink("suggestion 1",
                           value: SelectionState.book(Book(title: "suggestion 1")))
            NavigationLink("suggestion 2",
                           value: SelectionState.book(Book(title: "suggestion 2")))
            NavigationLink("suggestion 3",
                           value: SelectionState.book(Book(title: "suggestion 3")))
        }
        .navigationTitle(book.title)
    }
}

#Preview {
    BookDetailView(book: Book(title: "Alice in Wonderland"))
}
