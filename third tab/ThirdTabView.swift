//
//  ThirdTabView.swift
//  NavigationStackProject
//
//  Created by Aydın KAYA on 21.03.2024.
//

import SwiftUI

struct ThirdTabView: View {
    @StateObject var modelDataManager = ModelDataManager()
    @StateObject var navigationStateManager = NavigationStateManager()
    
    @SceneStorage("navigationState") var navigationStateData: Data?
    
    var body: some View {
        
        NavigationStack(path: $navigationStateManager.selectionPath) {
            
            RootView(modelData: modelDataManager)
            
                .navigationDestination(for: SelectionState.self) { state in
                    switch state {
                    case .song(let song):
                        SongDetailView(song: song)
                    case .movie(let movie):
                        MovieDetailView(movie: movie)
                    case .book(let book):
                        BookDetailView(book: book)
                    case .settings:
                        SettingsView()
                    }
                }
            
        }
        .environmentObject(modelDataManager)
        .environmentObject(navigationStateManager)
        //.environment(\.colorScheme, .dark)
        /*
         // state restoration using async await
         .task {
         
         // reset during launch
         navigationStateManager.data = navigationStateData
         
         // save state to userdefaults
         for await _ in navigationStateManager.objectWillChangeSequence {
         navigationStateData = navigationStateManager.data
         }
         }
         */
        
        .onReceive(navigationStateManager.objectWillChange.dropFirst()) { _ in
            // save state to userdefaults
            navigationStateData = navigationStateManager.data
        }
        .onAppear {
            // reset during launch
            navigationStateManager.data = navigationStateData
            
        }
    }
}


#Preview {
    
    ThirdTabView()
}
