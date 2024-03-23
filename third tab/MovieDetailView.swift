//
//  MovieDetailView.swift
//  NavigationStackProject
//
//  Created by Aydın KAYA on 21.03.2024.
//

import SwiftUI

struct MovieDetailView: View {
    let movie: Movie
    
    var body: some View {
        VStack {
            Text("Movie detail movie")
            
        }
        .navigationTitle(movie.title)
    }
}

#Preview {
    MovieDetailView(movie: Movie(title: "Avatar"))
}
