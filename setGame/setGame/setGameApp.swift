//
//  setGameApp.swift
//  setGame
//
//  Created by wonderland on 6/21/22.
//

import SwiftUI

@main
struct setGameApp: App {
    var body: some Scene {
        WindowGroup {
            SetGameView(game: ViewModelSetGame())
        }
    }
}
