//
//  File.swift
//  
//
//  Created by Sthembiso Ndhlazi on 2024/03/14.
//

import Foundation
import SwiftUI

@available(iOS 13.0, *)
public protocol TabBarProvider: ObservableObject {
    var categories: [TabBarCategory] {get set}
    var foregroundColor: Color { get set }
}

@available(iOS 13.0, *)
public struct TabBarCategory {
    var id: Int
    var title: String
    var icon: Image
    var categoryView: AnyView
    
    public init(id: Int, title: String, icon: Image, categoryView: AnyView) {
        self.id = id
        self.title = title
        self.icon = icon
        self.categoryView = categoryView
    }
}
