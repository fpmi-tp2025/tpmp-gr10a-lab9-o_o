//
//  PlistManager.swift
//  BelarusianWritersApp
//
//  Created by MacBook on 19/05/2025.
//  Copyright © 2025 MacBook. All rights reserved.
//

import Foundation

class PlistManager {
    static func loadWriters() -> [Writer] {
        guard let path = Bundle.main.path(forResource: "Writers", ofType: "plist"),
            let data = try? Data(contentsOf: URL(fileURLWithPath: path)),
            let plist = try? PropertyListSerialization.propertyList(from: data, options: [], format: nil),
            let writersArray = plist as? [[String: Any]] else {
                return []
        }
        
        return writersArray.compactMap { dict in
            guard let name = dict["name"] as? String,
                let bio = dict["bio"] as? String,
                let books = dict["books"] as? [String],
                let imageName = dict["imageName"] as? String else { return nil }
            
            return Writer(name: name, bio: bio, books: books, imageName: imageName)
        }
    }
}
