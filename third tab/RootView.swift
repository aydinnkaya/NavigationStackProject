//
//  RootView.swift
//  NavigationStackProject
//
//  Created by Aydın KAYA on 21.03.2024.
//

import SwiftUI

struct RootView: View {
    
    @ObservedObject var modelData = ModelDataManager()
    
    var body: some View {
        List {
            
            Section("Songs") {
                ForEach(modelData.songs){ song in
                    NavigationLink(song.title, value: song)
                }
            }
            
            Section("Movie") {
                ForEach(modelData.movies){ movie in
                    NavigationLink(movie.title, value: movie)
                }
            }
            
            Section("Books") {
                ForEach(modelData.books){ book in
                    NavigationLink(book.title, value: book)
                }
            }
        }
        .navigationTitle("Root View")
        
    }
}

#Preview {
   
        RootView(modelData: ModelDataManager())
    
    
}
