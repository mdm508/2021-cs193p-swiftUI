    //
    //  EmojiMemoryGameView.swift
    //  matthew_memorize
    //
    //  Created by YU HSIN HO on 5/25/22.
    //

import SwiftUI



struct EmojiMemoryGameView: View {
    @ObservedObject var game: EmojiMemoryGame
    @State var emojiCount = 1 // how many emoji to display
    var body: some View {
        
            ScrollView {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 100))]){
                    ForEach(game.cards){card in
                        CardView(card)
                            .aspectRatio(2/3, contentMode: .fit)
                            .onTapGesture{game.choose(card)}
                    }
                }
            }
            .foregroundColor(.red) //waterfall down
            .padding(.horizontal)
        
    }
    var add: some View {
        Button(action: {
            if self.emojiCount < self.game.cards.count {
                self.emojiCount += 1
            }
        },label: {
            Image(systemName: "plus.circle")
            
        })
    }
    var remove: some View {
        Button(action: {
            if self.emojiCount > 0{
                self.emojiCount -= 1
            }}){
             Image(systemName: "minus.circle")
        }
    }
}

struct CardView: View {
    var card:  EmojiMemoryGame.Card
    init(_ card: EmojiMemoryGame.Card){
        self.card = card
    }
    var body: some View {
        let shape = RoundedRectangle(cornerRadius: DrawingConstants.cornerRadius)
        GeometryReader{ proxy in
            ZStack{
                if card.isFaceUp {
                    shape.fill().foregroundColor(.white)
                    shape.strokeBorder(lineWidth: DrawingConstants.lineWidth)
                    Text(card.content).font(font(in: proxy.size))
                } else if card.isMatched {
                    shape.opacity(0)
                }
                
                else {
                    shape.fill()
                }
            }
        }
    }
    private func font(in size:CGSize) -> Font {
        Font.system(size: min(size.width, size.height) * DrawingConstants.fontScale)
    }
    
    private struct DrawingConstants {
        static let cornerRadius: CGFloat = 20
        static let lineWidth: CGFloat = 3
        static let fontScale: CGFloat = 0.8
    }
}
















struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        let game = EmojiMemoryGame()
        EmojiMemoryGameView(game: game)
            .preferredColorScheme(.light)
        EmojiMemoryGameView(game: game)
            .preferredColorScheme(.dark)    
        
    }
}
