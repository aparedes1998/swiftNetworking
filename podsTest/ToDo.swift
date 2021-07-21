//
//  todo.swift
//  podsTest
//
//  Created by Administrador on 7/20/21.
//

import Foundation
import ObjectMapper

struct ToDo: ImmutableMappable {
    let id: Int
    let title: String
    let completed: Bool
    
    init(map: Map) throws {
        self.id = try map.value(Keys.id.rawValue)
        self.title = try map.value(Keys.title.rawValue)
        self.completed = try map.value(Keys.completed.rawValue)
    }
    
    enum Keys: String {
        case id
        case title
        case completed
    }
}
