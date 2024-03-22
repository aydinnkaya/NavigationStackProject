//
//  ModelDataManager.swift
//  NavigationStackProject
//
//  Created by Aydın KAYA on 21.03.2024.
//

import Foundation

class ModelDataManager: ObservableObject{
    
    @Published var books = Book.examples()
    @Published var songs = Song.examples()
    @Published var movies = Movie.examples()
    
}
