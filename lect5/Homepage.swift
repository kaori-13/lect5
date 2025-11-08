

import SwiftUI

struct HomepageView: View {
    var body: some View {
        ZStack {
            Image(.nightcafe)
                .resizable()
                .ignoresSafeArea()
                .opacity(0.7)
            VStack(spacing: 40) {
                Text("Art")
                    .font(.system(size: 180))
                    .bold()
                    .italic()
                    .foregroundColor(.white)
                    .opacity(0.8)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .lineLimit(nil)
                    .fixedSize(horizontal: false, vertical: true)
                    .padding(.horizontal)
                    .shadow(color: .black.opacity(0.5), radius: 14, x: 0, y: 12) // 陰影

                Text("Collection")
                    .font(.system(size: 80))
                    .bold()
                    .italic()
                    .foregroundColor(.white)
                    .opacity(0.8)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .lineLimit(nil)
                    .fixedSize(horizontal: false, vertical: true)
                    .padding(.horizontal)
                    .shadow(color: .black.opacity(0.5), radius: 10, x: 0, y: 8) // 陰影
            }
        }
    }
}

#Preview {
    HomepageView()
}
