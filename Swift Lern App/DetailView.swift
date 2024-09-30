//
//  DetailView.swift
//  HeadFirstSwift
//
//  Created by Alexandre Samson on 30.09.24.
//

import SwiftUI

struct DetailView: View {
    
    let topic: Topic
    
    var body: some View {
        VStack {
            Text("Erklärung")
                .font(.title)
            Text(topic.explanation)
                .font(.body)
            Text("Kode-beispiel")
            Text(topic.codeSnippet)
                .font(.body)
        }
    }
}

#Preview {
    DetailView(topic: Topic(title: "Konstante", explanation: "Speichert Daten", codeSnippet: "let variable: String"))
}
