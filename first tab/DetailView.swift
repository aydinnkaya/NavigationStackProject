//
//  DetailView.swift
//  NavigationStackProject
//
//  Created by Aydın KAYA on 21.03.2024.
//

import SwiftUI

struct DetailView: View {
    let text: String
    @Binding var path: NavigationPath
    
    var backButtonPlacement: ToolbarItemPlacement {
        #if os(iOS)
        ToolbarItemPlacement.navigationBarLeading
        #else
        ToolbarItemPlacement.navigation
        #endif
    }
    var body: some View {
        VStack {
            Text("Detail view showing")
            Text(text)
            
            Divider()
            
            NavigationLink("Link to 3", value: 3)
            NavigationLink("Link to C", value: "CCCC")
            
        }
        .navigationTitle(text)
        .navigationBarBackButtonHidden()
        .toolbar {
            ToolbarItem(placement: backButtonPlacement) {
                Button {
                    path.removeLast()
                } label: {
                    Image(systemName: "chevron.left.circle")
                }
            }
        }
    }
}
#Preview {
    NavigationStack {
        DetailView(text: "CCCC",
                   path: .constant(NavigationPath()))
    }
}

