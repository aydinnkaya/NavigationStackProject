//
//  ContentView.swift
//  NavigationStackProject
//
//  Created by Aydın KAYA on 20.03.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            TabView {
                FirstTabView()
                    .tabItem {
                        Label("First", systemImage: "plus")
                    }
                
                SecondTabView()
                    .tabItem {
                        Label("Second", systemImage: "face.smiling")
                    }
                
                ThirdTabView()
                    .tabItem {
                        Label("Third", systemImage: "doc.richtext")
                    }
            }
        }
    }
}

#Preview {
    ContentView()
}
