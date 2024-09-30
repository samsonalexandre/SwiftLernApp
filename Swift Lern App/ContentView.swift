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
        
        NavigationStack {
            List {
                ForEach(viewModel.topics, id:\.self) { topic in
                    NavigationLink(topic.title) {
                        DetailView(topic: topic)
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
