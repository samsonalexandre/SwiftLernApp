//
//  Topic.swift
//  HeadFirstSwift
//
//  Created by Alexandre Samson on 30.09.24.
//

import Foundation

struct Topic: Decodable, Hashable {
    let title: String
    let explanation: String
    let codeSnippet: String
}
