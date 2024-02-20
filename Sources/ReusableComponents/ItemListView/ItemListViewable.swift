import Foundation

@available(iOS 13.0, *)
public protocol ItemListViewable: ObservableObject {
    var items: [Item] { get set }
    var isLoading: Bool { get set }
    func setUpData()
}

public protocol ItemDetailView {
    var selectedItem: Item { get }
}
