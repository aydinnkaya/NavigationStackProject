//
//  Book.swift
//  NavigationStackProject
//
//  Created by Aydın KAYA on 21.03.2024.
//

import Foundation
  
struct Book : Identifiable, Hashable{
    
    var title : String
    let id: UUID
    	
    init(title: String) {
        self.title = title
        self.id = UUID()
    }
    
    static func examples() -> [Book]{
        [
            Book(title: "Lord of the Rings"),
            Book(title: "Game of Thrones"),
            Book(title: "The Shining")
        ]
        
    }
}
