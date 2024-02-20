//
//  ItemListView.swift
//  Cocktails
//
//  Created by Sthembiso Ndhlazi on 2023/11/15.
//

import Foundation

@available(iOS 13.0, *)
public protocol ItemListViewable: ObservableObject {
    var items: [Item] { get set }
    var isLoading: Bool { get set }
    func setUpData()
}

public struct ItemListViewModel {
    var imageURLString: String
    var title: String
    var subtitle: String
    var id: UUID = UUID()
    var isFavourite: Bool? 
    
    static func == (lhs: ItemListViewModel, rhs: ItemListViewModel) -> Bool {
        lhs.id == rhs.id
    }
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
    
    init(imageURLString: String, title: String, subtitle: String, isFavorite: Bool? = nil) {
        self.imageURLString = imageURLString
        self.title = title
        self.subtitle = subtitle
        self.isFavourite = isFavorite
    }
}
