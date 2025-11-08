

import SwiftUI

struct IntroView: View {
    var body: some View {
        ZStack  {
            Image(.vangogh)
                .resizable()
                .ignoresSafeArea()
                .opacity(0.7)
            VStack {
                
                Text("Vincent van Gogh")
                    .font(Font.largeTitle)
                    .bold()
                    .padding(20)
                ScrollView {
                    Image(.vangogh)
                        .resizable()
                        .scaledToFit()
                        .clipShape(
                            RoundedRectangle(
                                cornerRadius:
                                    20
                            )
                        )
                        .padding(10)
                    Text("Vincent Willem van Gogh was a Dutch Post-Impressionist painter who is among the most famous and influential figures in the history of Western art. In just over a decade, he created approximately 2,100 artworks, including around 860 oil paintings, most of them in the last two years of his life. His oeuvre includes landscapes, still lifes, portraits, and self-portraits, most of which are characterised by bold colours and dramatic brushwork that contributed to the rise of expressionism in modern art. Van Gogh's work was only beginning to gain critical attention before his death from suicide at age 37. During his lifetime, only one of Van Gogh's paintings, The Red Vineyard, was sold.")
                        .font(.system(size: 20))
                        .bold()
                        .foregroundStyle(.white)
                        .padding(30)
                        .background(
                            RoundedRectangle(cornerRadius: 20)
                                .foregroundStyle(Color(red: 20/255, green: 60/255, blue: 70/255))
                                .opacity(0.5)
                                .padding(10)
                    )
                }
            }
        }
    }
}

#Preview {
    IntroView()
}
