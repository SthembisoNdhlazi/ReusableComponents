//
//  ToastView.swift
//  Cocktails
//
//  Created by Sthembiso Ndhlazi on 2023/12/23.
//

//TODO: Delete this
import SwiftUI

@available(iOS 17.0, *)
public struct SuccessView: View {
    let message: String
    @State var isChecked: Bool = true
    
    public init(message: String) {
        self.message = message
    }
    
    public var body: some View {
        VStack {
            Image(systemName: isChecked ? "checkmark.circle" : "checkmark.circle.fill")
                .resizable()
                .frame(width: 50, height: 50)
                .foregroundStyle(.black)
            Text(message)
                .foregroundStyle(.black)
        }
        .padding()
        .contentTransition(.symbolEffect(.automatic))
        .frame(width: 350, height: 150)
        .background(
            RoundedRectangle(cornerRadius: 30, style: .continuous)
                .foregroundStyle(.thinMaterial)
        )
        .transition(.symbolEffect(.appear))
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                self.isChecked = false
            }
        }
    }
}

@available(iOS 17.0, *)
struct ToastView_Previews: PreviewProvider {
    static var previews: some View {
        SuccessView(message: "Your drink has been added to your favorites")
    }
}
