//
//  ViewModel.swift
//  HeadFirstSwift
//
//  Created by Alexandre Samson on 30.09.24.
//

import Foundation

class ViewModel: ObservableObject {
    let topics: [Topic]
    init() {
        guard let url = Bundle.main.url(forResource: "data", withExtension: "json") else {
            topics = []
            return
        }
        do {
            let data = try Data(contentsOf: url)
            topics = try JSONDecoder().decode([Topic].self, from: data)
        } catch {
            print("Error: \(error)")
            topics = []
        }
    }
}
