

import SwiftUI

struct ContentView: View {
    var body: some View {
                TabView {
                    Tab("Homepage", systemImage: "house.circle.fill") {
                        HomepageView()
                    }
                    Tab("Intro", systemImage: "person.circle.fill") {
                        IntroView()
                    }
                    Tab("Gallery", systemImage: "books.vertical") {
                        GalleryView()
                    }
                }
            }
        }


#Preview {
    ContentView()
}
