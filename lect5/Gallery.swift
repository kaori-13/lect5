import SwiftUI

struct GalleryView: View {
    let paints: [Paint] = [
        Paint(
            bg: "riverbank",
            name: "Starry night over the rhône",
            image: "riverbank",
            des:
                "“Starry Night Over the Rhône” (1888) by Vincent van Gogh captures the shimmering reflections of stars and city lights on the Rhône River in Arles. Blending deep blues and golden tones, it conveys a peaceful yet emotional view of the night, expressing Van Gogh’s longing for love and connection beneath the vast sky."
        ),
        Paint(
            bg: "sunflower",
            name: "Sun flower",
            image: "sunflower",
            des:
                "“Sunflowers” (1888–1889) by Vincent van Gogh depicts a vase of bright yellow sunflowers painted with vivid, textured strokes. The work symbolizes friendship, gratitude, and the beauty of life, showcasing Van Gogh’s mastery of color and emotion."
        ),
        Paint(
            bg: "almondflower",
            name: "Almond flower",
            image: "almondflower",
            des:
                "“Almond Blossoms” (1890) by Vincent van Gogh was painted to celebrate the birth of his nephew. Inspired by Japanese art, the painting shows delicate white almond flowers against a bright blue sky. It symbolizes new life, hope, and renewal, standing out as one of Van Gogh’s most peaceful and joyful works"
        ),
        Paint(
            bg: "Starry night",
            name: "The Starry Night",
            image: "Starry night",
            des:
                "“The Starry Night” (1889) was painted by Vincent van Gogh while he was staying at the asylum in Saint-Rémy-de-Provence. The swirling night sky, filled with luminous stars and a bright moon, overlooks a quiet village and cypress trees. Through vivid blues, yellows, and expressive brushstrokes, Van Gogh transforms the landscape into a vision of emotion and imagination. The painting reflects both his inner turmoil and his awe of nature’s vastness, making it one of the most famous artworks in history."
        ),
        Paint(
            bg: "Plantingwheat",
            name: "The Sower",
            image: "Plantingwheat",
            des:
                "“The Sower” (1888) depicts a farmer scattering seeds across a sunlit field beneath a radiant golden sky. Painted in Arles, it reflects Van Gogh’s admiration for the cycle of nature and human labor. The bold contrast between the glowing sun and the blue-violet field symbolizes hope, renewal, and the harmony between man and earth. The rhythmic brushstrokes and vivid colors show Van Gogh’s emotional connection to rural life and his search for spiritual meaning through art."
        ),
        Paint(
            bg: "Nightcafe",
            name: "Café Terrace at Night",
            image: "Nightcafe",
            des:
                "“Café Terrace at Night” was painted by Vincent van Gogh in 1888 in Arles, France. It portrays a warmly lit café under a starry night sky, with yellow light spilling onto the cobblestone street. This work is one of the first where Van Gogh painted a night scene directly outdoors, capturing the gentle glow of gaslight without using black paint — instead relying on deep blues and vibrant yellows.The painting reflects Van Gogh’s fascination with the harmony between human warmth and the vastness of the universe, blending everyday life with cosmic wonder."
        ),
        Paint(
            bg: "Wheat",
            name: "Wheat Field with Cypresses",
            image: "Wheat",
            des:
                "“Wheat Field with Cypresses” (1889) was painted by Vincent van Gogh while he was staying at the asylum in Saint-Rémy-de-Provence. The painting shows a golden wheat field under a swirling summer sky, framed by tall, dark cypress trees and distant mountains.Van Gogh used vibrant blues, greens, and yellows with expressive brushstrokes to capture the movement of wind and light. The work reflects both his admiration for nature’s vitality and his emotional turbulence — blending calm and energy, serenity and passion in one harmonious scene."
        ),
        Paint(
            bg: "Vangogh",
            name: "Self-Portrait(1887)",
            image: "Vangogh",
            des:
                "“Self-Portrait” (1887) was painted while Vincent van Gogh was living in Paris. During this period, he was deeply influenced by Impressionism and Pointillism, which is reflected in his use of short, colorful brushstrokes and bright tones.In this portrait, Van Gogh gazes directly at the viewer with intensity, his face illuminated by vibrant hues of orange, blue, and green. The work reveals his growing artistic confidence and his exploration of color as a means to express emotion rather than realism."
        ),
        Paint(
            bg: "Hat",
            name: "Self-Portrait with a Grey Felt Hat",
            image: "Hat",
            des:
                "“Self-Portrait with a Grey Felt Hat” (1887) shows Vincent van Gogh’s intense gaze, painted with short, colorful brushstrokes that radiate energy. Created in Paris, this work reflects his fascination with color theory and light, influenced by Impressionism and Pointillism. The vibrant strokes express both his artistic experimentation and his emotional depth, making it one of his most iconic self-portraits."
        ),
    ]

    var body: some View {
        NavigationStack {
            ZStack {
                Image("sunflower1")
                    .resizable()
                    .scaledToFill()
                    .frame(minWidth: 0, maxWidth: .infinity)
                    .ignoresSafeArea()
                List {
                    ForEach(paints) { paint in
                        NavigationLink {
                            PaintingDetail(way: paint)
                        } label: {
                            PaintRow(way: paint)
                        }
                    }
                    .navigationTitle("Vincent Van Gogh")
                }
                .scrollContentBackground(.hidden)
                .opacity(0.8)
            }
        }
    }
}

struct PaintRow: View {
    let way: Paint

    var body: some View {
        HStack {
            Image(way.image)
                .resizable()
                .frame(width: 60, height: 60)
                .clipShape(
                    RoundedRectangle(
                        cornerRadius:
                            10
                    )
                )
            Text(way.name)
                .font(.headline)
                .padding(.vertical, 4)
        }
    }
}

#Preview {
    GalleryView()
}
