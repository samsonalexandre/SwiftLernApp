//
//  ContentView.swift
//  Swift Lern App
//
//  Created by Alexandre Samson on 30.09.24.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var viewModel = ViewModel()
    
    var body: some View {
        List {
            ForEach(viewModel.topics, id:\.self) { topic in
                Text(topic.title)
            }
        }
    }
}

#Preview {
    ContentView()
}
