//
//  Drink.swift
//  Cocktails
//
//  Created by Sthembiso Ndhlazi on 2023/10/08.
//

import Foundation

public struct Item: ItemViewable, Identifiable {
    public var id: String
    
    public var drinkName: String
    
    public var glass: String?
    
    public var instructions: String?
    
    public var image: String
    
    public var category: String?
    
    public var isFavorite: Bool?
    
    public init(id: String, drinkName: String, glass: String? = nil, instructions: String? = nil, image: String, category: String? = nil, isFavorite: Bool? = nil) {
        self.id = id
        self.drinkName = drinkName
        self.glass = glass
        self.instructions = instructions
        self.image = image
        self.category = category
        self.isFavorite = isFavorite
    }
}
