//
//  ThirdTabView.swift
//  NavigationStackProject
//
//  Created by Aydın KAYA on 21.03.2024.
//

import SwiftUI

struct ThirdTabView: View {
    @StateObject var modelDataManager = ModelDataManager()
    
    var body: some View {
        NavigationStack{
            
            RootView(modelData: modelDataManager)
        }
        
       
      
    }
}

#Preview {
    
    ThirdTabView()
}
