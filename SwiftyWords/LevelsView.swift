//
//  LevelsView.swift
//  SwiftyWords
//
//  Created by Robert Martinez on 5/23/23.
//

import SwiftUI

struct LevelsView: View {
    var category: Category
    
    var body: some View {
        List(0..<category.levels.count, id: \.self) { number in
            NavigationLink(value: number) {
                Text("Level \(number + 1)")
            }
        }
        .navigationDestination(for: Int.self) { level in
            ContentView(category: category, levelNumber: level)
        }
        .navigationTitle(category.name)
    }
}

struct LevelsView_Previews: PreviewProvider {
    static var previews: some View {
        LevelsView(category: .example)
    }
}
