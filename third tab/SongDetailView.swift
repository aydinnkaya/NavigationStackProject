//
//  SongDetailView.swift
//  NavigationStackProject
//
//  Created by Aydın KAYA on 21.03.2024.
//

import SwiftUI

struct SongDetailView: View {
    
    let song: Song
    @EnvironmentObject var modelData: ModelDataManager
    @EnvironmentObject var navigationStateManager: NavigationStateManager
    
    var body: some View {
        VStack {
            Text("Song Detail")
            Text(song.artist)
                .bold()
            Text("\(song.year)")
            
            
            Divider()
            

            VStack(alignment: .leading) {
                Text("People Also Liked")
                
                ForEach(modelData.songs) { song in
                    NavigationLink(value: SelectionState.song(song)) {
                        Label(song.title, systemImage: "music.note")
                    }
                }
            }
            
            Button {
                navigationStateManager.popToRoot()
            } label: {
                Text("go to root")
            }
            
        }
        .navigationTitle(song.title)
        .toolbar {
            ToolbarItem(placement: .primaryAction) {
                Button {
                    navigationStateManager.goToSettings()
                } label: {
                    Image(systemName: "gear")
                }
                
            }
        }
        
    }
}


#Preview {
    NavigationStack {
        SongDetailView(song: Song(title: "Smells Like Teen Spirit",
                                  artist: "Nirvana",
                                  year: 1991))
        .environmentObject(ModelDataManager())
        .environmentObject(NavigationStateManager())
    }
}

