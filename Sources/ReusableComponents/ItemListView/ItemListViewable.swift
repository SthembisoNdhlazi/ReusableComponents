import Foundation

@available(iOS 13.0, *)
public protocol ItemListViewable: ObservableObject {
    var items: [Item] { get set }
    var isLoading: Bool { get set }
    func setUpData()
}

//public struct ItemListViewModel {
//    public var imageURLString: String
//    public var title: String
//    public var subtitle: String
//    public var id: UUID = UUID()
//    public var isFavourite: Bool?
//    
//    static func == (lhs: ItemListViewModel, rhs: ItemListViewModel) -> Bool {
//        lhs.id == rhs.id
//    }
//    func hash(into hasher: inout Hasher) {
//        hasher.combine(id)
//    }
//    
//    public init(imageURLString: String, title: String, subtitle: String, isFavorite: Bool? = nil) {
//        self.imageURLString = imageURLString
//        self.title = title
//        self.subtitle = subtitle
//        self.isFavourite = isFavorite
//    }
//}
