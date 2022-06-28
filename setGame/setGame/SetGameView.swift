// VIEW
//  ContentView.swift
//  setGame
//
//  Created by wonderland on 6/21/22.
//

import SwiftUI

// TODO: [your to-do item].


// TODO: Card

struct SetGameView: View {
    @ObservedObject var game: ViewModelSetGame

    var body: some View {
        Text("Hello, world!")
            .padding()
    }
}

struct CardView: View {
    let card: ViewModelSetGame.Card
    
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                let shape = RoundedRectangle(cornerRadius: DrawingConstants.cornerRadius)
                    shape.fill().foregroundColor(.white)
                    shape.strokeBorder(lineWidth: DrawingConstants.lineWidth)
                    Text("hello").font(font(in: geometry.size))
                        .padding(DrawingConstants.circlePadding)
            }
        }
    }
    
    private func font(in size: CGSize) -> Font {
        Font.system(size: min(size.width, size.height) * DrawingConstants.fontScale)
    }
    
    private struct DrawingConstants {
        static let cornerRadius: CGFloat = 10
        static let lineWidth: CGFloat = 2.5
        static let fontScale: CGFloat = 0.65
        static let circlePadding: CGFloat = 5
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        SetGameView(game: ViewModelSetGame())
    }
}

/*
 Notes on View
 - pretty much stateless
 - data flows from model to the view
 - @State is transient UI
 - user intentions
 
 */
