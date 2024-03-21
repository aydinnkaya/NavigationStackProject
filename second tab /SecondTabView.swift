//
//  SecondTabView.swift
//  NavigationStackProject
//
//  Created by Aydın KAYA on 21.03.2024.
//

import SwiftUI

struct SecondTabView: View {
    
    let books = Book.examples()
    @State private var selectedBookPath = [Book]()
    
    var body: some View {
        VStack {
            NavigationStack(path: $selectedBookPath) {
                
                List {
                    ForEach(books) { book in
                        NavigationLink(book.title, value: book)
                    }
                }
                .navigationDestination(for: Book.self) { book in
                    BookDestinationView(book: book)
                }
            }
            
            VStack{
                ForEach(selectedBookPath) { book in
                    Text(book.title)
                }
                
                Button {
                    
                    guard let book = books.first else { return }
                    
                    selectedBookPath = [book]
                    
                    
                } label: {
                    Text("go to favorite")
                }
                
            }
        }
    }
}

#Preview {
    SecondTabView()
}
