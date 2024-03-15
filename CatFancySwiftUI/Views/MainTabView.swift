//
//  MainTabView.swift
//  CatFancySwiftUI
//
//  Created by Romeo Flauta on 3/15/24.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            BrowseBreedsView()
                .tabItem {
                    Image(systemName: "pawprint.fill")
                    Text("Browse")
                }
            
            SettingsView()
                .tabItem {
                    Image(systemName: "gearshape.2.fill")
                    Text("Settings")
                }
        }
    }
}

#Preview {
    MainTabView()
}
