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
                    NavigationLink(song.title, value: SelectionState.song(song))
                }
            }
            
            Section("Movie") {
                ForEach(modelData.movies){ movie in
                    NavigationLink(movie.title, value: SelectionState.movie(movie))
                }
            }
            
            Section("Books") {
                ForEach(modelData.books){ book in
                    NavigationLink(book.title, value: SelectionState.book(book))
                }
            }
            
            NavigationLink("Settings", value: SelectionState.settings)

        }
        .navigationTitle("Root View")
        
    }
}

#Preview {
   
        RootView(modelData: ModelDataManager())
    
    
}
