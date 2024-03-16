//
//  SettingsView.swift
//  CatFancySwiftUI
//
//  Created by Romeo Flauta on 3/15/24.
//

import SwiftUI

struct SettingsView: View {
    @Bindable private var current = Current
    
    var body: some View {
        VStack {
            Text("Settings")
                .font(.largeTitle)
            
            Spacer()
                .frame(height: Layout.tripleStandard)
            
            Group {
                Text("Sort Order")
                    .font(.title)
                
                Picker("", selection: $current.settings.sortOrder) {
                    ForEach(SortOrder.allCases, id: \.self) { sortOrder in
                        Text(sortOrder.displayName).tag(sortOrder)
                    }
                }
                .pickerStyle(SegmentedPickerStyle())
                .padding(.horizontal, Layout.doubleStandard)
                
                Text("This setting controls the sort order of breeds on CatFancySwiftUI's breed-browsing screen.")
                    .padding()
            }
            
            Spacer()
        }
    }
}

#Preview {
    SettingsView()
}
