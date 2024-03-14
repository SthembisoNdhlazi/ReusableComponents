import SwiftUI

@available(iOS 15.0, *)
struct TabBarComponent<Provider: TabBarProvider>: View {
    
    @State var selectedTab: Int = 0
    @StateObject var dataProvider: Provider
    
    init(dataProvider: Provider) {
        self._dataProvider = StateObject(wrappedValue: dataProvider)
    }
    
    var body: some View {
        
        ZStack(alignment: .bottom) {
            TabView(selection: $selectedTab) {
                ForEach(dataProvider.categories, id: \.id) { item in
                    item.categoryView
                        .tag(item.id)
                }
            }
        }
        
        ZStack {
            HStack {
                ForEach(dataProvider.categories, id: \.id) { item in
                    Button {
                        selectedTab = item.id
                    } label: {
                        CustomTabItem(image: item.icon, title: item.title, isActive: selectedTab == item.id)
                    }
                }
            }
        }
    }
    
    func CustomTabItem(image: Image, title: String, isActive: Bool) -> some View {
        HStack(spacing: 10) {
            Spacer()
            image
                .resizable()
                .renderingMode(.template)
                .foregroundColor(isActive ? .black : .gray)
                .frame(width: 20, height: 20)
            if isActive{
                Text(title)
                    .font(.system(size: 14))
                    .foregroundColor(isActive ? .black : .gray)
            }
            Spacer()
        }
        .frame(width: isActive ? .infinity : 60, height: 60)
        .background(isActive ? .gray.opacity(0.4) : .clear)
        .cornerRadius(30)
        .padding(.horizontal)
    }
}
