

import SwiftUI

struct PaintingDetail: View {
    let way: Paint

    var body: some View {
        ZStack {
            // 背景圖
            Image(way.bg)
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
                .opacity(0.6)
                .frame(minWidth: 0, maxWidth: .infinity)

            VStack(spacing: 10) {
                // 主要圖片
                Image(way.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                    .shadow(radius: 8)
                    .frame(maxWidth: .infinity)
                    .padding(.vertical, 20)
                    .padding(.horizontal, 0)
                Text(way.name)
                    .font(.system(size: 50))
                    .bold()
                    .foregroundColor(.white)
                    .opacity(0.8)
                    .multilineTextAlignment(.leading)
                    .lineLimit(nil)
                    .fixedSize(horizontal: false, vertical: true)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .shadow(color: .black.opacity(0.8), radius: 10, x: 0, y: 8)

                Text(way.des)
                    .font(.system(size: 22))
                    .foregroundColor(.black)
                    .bold()
                    .multilineTextAlignment(.leading)
                    .lineLimit(nil)
                    .fixedSize(horizontal: false, vertical: true)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal, 20)
            .frame(maxWidth: 600)
        }
    }
}

#Preview {
    NavigationStack {
        PaintingDetail(
            way: Paint(
                bg: "riverbank",
                name: "Starry night over the rhône",
                image: "riverbank",
                des: "description"
            )
        )
    }
}
