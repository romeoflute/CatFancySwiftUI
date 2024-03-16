//
//  Modifier.swift
//  CatFancySwiftUI
//
//  Created by Romeo Flauta on 3/16/24.
//

import SwiftUI

extension View {
    func segmentedPicker() -> some View {
        modifier(SegmentedPicker())
    }
}

private struct SegmentedPicker: ViewModifier {
    func body(content: Content) -> some View {
        content
            .pickerStyle(SegmentedPickerStyle())
            .padding(.horizontal, Layout.doubleStandard)
    }
}

private struct SegmentedPickerView: View {
    @State var selection = BreedsURL.withMore
    
    var body: some View {
        VStack {
            Text("segmentedPicker()")
                .font(.headline)
            
            Picker("", selection: $selection) {
                ForEach(BreedsURL.allCases, id: \.self) { breedsURL in
                    Text(breedsURL.displayName)
                }
            }
            .segmentedPicker()
        }
    }
}

#Preview {
    SegmentedPickerView()
}
