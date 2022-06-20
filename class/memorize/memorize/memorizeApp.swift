//
//  memorizeApp.swift
//  memorize
//
//  Created by Matthew on 5/31/22.
//

import SwiftUI

@main
struct memorizeApp: App {
    var body: some Scene {
        WindowGroup {
            EmojiMemoryGameView(game: EmojiMemoryGame())
        }
    }
}
